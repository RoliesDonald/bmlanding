// storage-adapter-import-placeholder
import { postgresAdapter } from '@payloadcms/db-postgres'

import sharp from 'sharp' // sharp-import
import path from 'path'
import { buildConfig, commitTransaction, PayloadRequest } from 'payload'
import { fileURLToPath } from 'url'

import { Categories } from './collections/Categories.ts'
import { Media } from './collections/Media.ts'
import { Pages } from './collections/Pages/index.ts'
import { Posts } from './collections/Posts/index.ts'
import { Users } from './collections/Users/index.ts'
import { Footer } from './Footer/config.ts'
import { Header } from './Header/config.ts'
import { plugins } from './plugins/index.ts'
import { defaultLexical } from '@/fields/defaultLexical'
import { getServerSideURL } from './utilities/getURL.ts'
import { Customer } from './collections/Customers/Customers.ts'
import { Gallery } from './collections/Gallery/Gallery.ts'
import { connect } from 'http2'

const filename = fileURLToPath(import.meta.url)
const dirname = path.dirname(filename)
const isMockBuild = process.env.PAYLOAD_BUILD_MOCK === 'true'

const NEXT_PUBLIC_SERVER_URL = process.env.NEXT_PUBLIC_SERVER_URL || 'http://localhost:3000'

const databaseUrl = process.env.DATABASE_URL
const secretKey = process.env.PAYLOAD_SECRET
let dbAdapter
if (!isMockBuild) {
  const databaseUrl = process.env.DATABASE_URI || process.env.DATABASE_URL
  if (!databaseUrl) {
    throw new Error('❌ DATABASE_URL or DATABASE_URI is not set in environment variables.')
  }

  dbAdapter = postgresAdapter({
    pool: {
      connectionString: databaseUrl!,
    },
  })
}

// const BASE_PATH = process.env.NEXT_PUBLIC_BASE_PATH

const baseConfig = {
  secret: secretKey!,
  serverURL: NEXT_PUBLIC_SERVER_URL,
  routes: {
    // admin: `${BASE_PATH}/admin`,
    // api: `${BASE_PATH}/api`,
    // admin: '/admin',
    // api: '/api',
  },
  admin: {
    // logoutRoute: `/admin`,
    meta: {
      title: 'Bung Mekanik',
      titleSuffix: ' - Dashboard',
      icons: './assets/logoBM.png',
    },
    components: {
      beforeLogin: ['@/components/BeforeLogin'],

      beforeDashboard: ['@/components/BeforeDashboard'],
      graphics: {
        Logo: '/components/adminWeb/Logo',
        Icon: '/components/adminWeb/Icon',
      },
    },
    importMap: {
      baseDir: path.resolve(dirname),
    },
    user: Users.slug,
    livePreview: {
      breakpoints: [
        {
          label: 'Mobile',
          name: 'mobile',
          width: 375,
          height: 667,
        },
        {
          label: 'Tablet',
          name: 'tablet',
          width: 768,
          height: 1024,
        },
        {
          label: 'Desktop',
          name: 'desktop',
          width: 1440,
          height: 900,
        },
      ],
    },
  },
  // This config helps us configure global or default features that the other editors can inherit
  editor: defaultLexical,
  collections: isMockBuild
    ? [Users, Pages, Customer]
    : [Pages, Posts, Media, Categories, Users, Customer, Gallery],
  cors: [getServerSideURL()].filter(Boolean),
  globals: [Header, Footer],
  plugins: isMockBuild ? [] : [...plugins],
  // secret: process.env.PAYLOAD_SECRET,
  sharp,
  typescript: {
    outputFile: path.resolve(dirname, 'payload-types.ts'),
  },
  jobs: {
    access: {
      run: ({ req }: { req: PayloadRequest }): boolean => {
        if (req.user) return true
        // If there is no logged in user, then check
        // for the Vercel Cron secret to be present as an
        // Authorization header:
        const authHeader = req.headers.get('authorization')
        return authHeader === `Bearer ${process.env.CRON_SECRET}`
      },
    },
    tasks: [],
  },
  onInit: async (payload: any) => {
    if (isMockBuild) {
      payload.logger.info('⚙️ PAYLOAD_BUILD_MOCK active — skipping DB connection & collections')
    } else {
      payload.logger.info('✅ Payload initialized with DB connection')
    }
  },
}

export default buildConfig({
  ...baseConfig,
  db: dbAdapter || ({} as any),
})
