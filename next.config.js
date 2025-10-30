import { withPayload } from '@payloadcms/next/withPayload'

import redirects from './redirects.js'

// const NEXT_PUBLIC_SERVER_URL = process.env.VERCEL_PROJECT_PRODUCTION_URL
//   ? `https://${process.env.VERCEL_PROJECT_PRODUCTION_URL}`
//   : undefined || process.env.__NEXT_PRIVATE_ORIGIN || 'http://localhost:3000'

const NEXT_PUBLIC_SERVER_URL = process.env.NEXT_PUBLIC_SERVER_URL || 'http://localhost:3000'

/** @type {import('next').NextConfig} */
const nextConfig = {
  basePath: '/cms', // tambahan 1
  assetPrefix: '/cms', // tambahan 2
  images: {
    remotePatterns: [
      ...[NEXT_PUBLIC_SERVER_URL /* 'https://example.com' */]
        .map((item) => {
          if (!item) return null // tambahan 3
          const url = new URL(item)
          return {
            hostname: url.hostname,
            protocol: url.protocol.replace(':', ''),
          }
        })
        .filter(Boolean),
    ],
  },
  webpack: (webpackConfig) => {
    webpackConfig.resolve.extensionAlias = {
      '.cjs': ['.cts', '.cjs'],
      '.js': ['.ts', '.tsx', '.js', '.jsx'],
      '.mjs': ['.mts', '.mjs'],
    }

    return webpackConfig
  },
  devIndicators: false,
  reactStrictMode: true,
  redirects,
}

export default withPayload(nextConfig, { devBundleServerPackages: false })
