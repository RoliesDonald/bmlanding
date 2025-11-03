// storage-adapter-import-placeholder
import { postgresAdapter } from '@payloadcms/db-postgres'

import sharp from 'sharp' // sharp-import
import path from 'path'
import { buildConfig, PayloadRequest } from 'payload'
import { fileURLToPath } from 'url'

import { Categories } from './collections/Categories'
import { Media } from './collections/Media'
import { Pages } from './collections/Pages'
import { Posts } from './collections/Posts'
import { Users } from './collections/Users'
import { Footer } from './Footer/config'
import { Header } from './Header/config'
import { plugins } from './plugins'
import { defaultLexical } from '@/fields/defaultLexical'
import { getServerSideURL } from './utilities/getURL'
import { Customer } from './collections/Customers/Customers'
import { Gallery } from './collections/Gallery/Gallery'

const filename = fileURLToPath(import.meta.url)
const dirname = path.dirname(filename)
// const BASE_URL = process.env.NEXT_PUBLIC_SERVER_URL + process.env.NEXT_PUBLIC_BASE_PATH

const NEXT_PUBLIC_SERVER_URL = process.env.NEXT_PUBLIC_SERVER_URL || 'http://localhost:3000'
const BASE_PATH = process.env.NEXT_PUBLIC_BASE_PATH

export default buildConfig({
  // serverURL: BASE_URL,
  routes: {
    admin: `${BASE_PATH}/admin`,
    api: `${BASE_PATH}/api`,
    // admin: '/admin',
    // api: '/api',
  },
  serverURL: NEXT_PUBLIC_SERVER_URL,
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
  db: postgresAdapter({
    pool: {
      connectionString: process.env.DATABASE_URI || '',
    },
  }),
  collections: [Pages, Posts, Media, Categories, Users, Customer, Gallery],
  cors: [getServerSideURL()].filter(Boolean),
  globals: [Header, Footer],
  plugins: [
    ...plugins,
    // storage-adapter-placeholder
  ],
  secret: process.env.PAYLOAD_SECRET,
  sharp,
  typescript: {
    outputFile: path.resolve(dirname, 'payload-types.ts'),
  },
  jobs: {
    access: {
      run: ({ req }: { req: PayloadRequest }): boolean => {
        // Allow logged in users to execute this endpoint (default)
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
})
