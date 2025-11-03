import { withPayload } from '@payloadcms/next/withPayload'

import redirects from './redirects.js'

// const NEXT_PUBLIC_SERVER_URL = process.env.VERCEL_PROJECT_PRODUCTION_URL
//   ? `https://${process.env.VERCEL_PROJECT_PRODUCTION_URL}`
//   : undefined || process.env.__NEXT_PRIVATE_ORIGIN || 'http://localhost:3000'

const NEXT_PUBLIC_SERVER_URL = process.env.NEXT_PUBLIC_SERVER_URL || 'http://localhost:3000'

/** @type {import('next').NextConfig} */
const nextConfig = {
  basePath: '/cms',
  output: 'standalone',
  // assetPrefix: '',
  async redirects() {
    return [{ source: '/cms/admin/logout', destination: '/cms/admin' }]
  },
  async rewrites() {
    return [
      {
        source: '/cms/api/:path*',
        destination: '/api/:path*',
      },
    ]
  },

  images: {
    path: '/_next/image',
    remotePatterns: [
      // untuk pengaturan media di cpanel
      // {
      //   protocol: 'http',
      //   hostname: 'localhost',
      //   port: '3000',
      //   pathname: '/api/media/**',
      // },
      // {
      //   protocol: 'http',
      //   hostname: 'localhost',
      //   port: '3000',
      //   pathname: '/cms/api/media/**',
      // },
      //end pengaturan media di cpanel
      // ...[NEXT_PUBLIC_SERVER_URL]
      //   .map((item) => {
      //     if (!item) return null
      //     const url = new URL(item)
      //     return {
      //       hostname: url.hostname,
      //       protocol: url.protocol.replace(':', ''),
      //       pathname: '/cms/api/media/**',
      //     }
      //   })
      //   .filter(Boolean),
      ...[NEXT_PUBLIC_SERVER_URL /* 'https://example.com' */]
        .map((item) => {
          if (!item) return null
          const url = new URL(item)
          return [
            {
              hostname: url.hostname,
              protocol: 'https',
              pathname: '/cms/api/media/**',
            },

            {
              hostname: url.hostname,
              protocol: 'https',
              pathname: '/api/media/**',
            },

            // hostname: url.hostname,
            // protocol: 'https',
            // pathname: '/cms/api/media/**',
          ]
        })
        .flat.filter(Boolean),
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
