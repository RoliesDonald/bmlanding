import { withPayload } from '@payloadcms/next/withPayload'

import redirects from './redirects.js'

// const NEXT_PUBLIC_SERVER_URL = process.env.VERCEL_PROJECT_PRODUCTION_URL
//   ? `https://${process.env.VERCEL_PROJECT_PRODUCTION_URL}`
//   : undefined || process.env.__NEXT_PRIVATE_ORIGIN || 'http://localhost:3000'

const NEXT_PUBLIC_SERVER_URL = process.env.NEXT_PUBLIC_SERVER_URL || 'http://localhost:3000'

/** @type {import('next').NextConfig} */
const nextConfig = {
  // basePath: '/cms',
  // output: 'standalone',
  // assetPrefix: '',
  async rewrites() {
    return [
      // Rewrite untuk API Login yang bermasalah:
      // {
      //   source: '/api/users/login',
      //   destination: '/cms/api/users/login',
      // },
      // // Tambahkan rewrite lain jika ada API yang masih bermasalah
      // // Contoh: '/api/users/me'
      // {
      //   source: '/api/users/me',
      //   destination: '/cms/api/users/me',
      // },
      // // Rewrite untuk API media yang mungkin masih bermasalah tanpa basePath
      // {
      //   source: '/api/media/:path*',
      //   destination: '/cms/api/media/:path*',
      // },
    ]
  }, // tambahan 2
  images: {
    path: '/_next/image',
    remotePatterns: [
      // untuk pengaturan media di cpanel
      // {
      //   protocol: 'http',
      //   hostname: 'bungmekanik.co.id',
      //   pathname: '/cms/api/media/**',
      // },
      //end pengaturan media di cpanel
      ...[NEXT_PUBLIC_SERVER_URL /* 'https://example.com' */]
        .map((item) => {
          if (!item) return null // tambahan 3
          const url = new URL(item)
          return {
            hostname: url.hostname,
            protocol: url.protocol.replace(':', ''),
            pathname: '/api/media/**', //tambahan untuk cpanel
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
