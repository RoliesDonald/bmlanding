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
  // async redirects() {
  //   return [{ source: '/cms/admin/logout', destination: '/admin' }]
  // },
  async rewrites() {
    if (process.env.CI) {
      return [
        {
          source: '/api/:path*',
          destination: '/404',
        },
        {
          source: '/posts-sitemap.xml',
          destination: '/404',
        },
        {
          source: '/pages-sitemap.xml',
          destination: '/404',
        },
      ]
    }
    return []
  },

  images: {
    path: '/_next/image',
    remotePatterns: [
      // untuk pengaturan media di cpanel
      {
        protocol: 'https', // Pastikan HTTPS
        hostname: 'cms.bungmekanik.co.id', // Domain produksi Anda
        pathname: '/api/media/**',
      },
      // Jika Anda masih ingin mendukung localhost di development:
      {
        protocol: 'http',
        hostname: 'localhost',
        pathname: '/api/media/**',
      },
      //end pengaturan media di cpanel
      ...[NEXT_PUBLIC_SERVER_URL]
        .map((item) => {
          if (!item) return null
          const url = new URL(item)
          return {
            hostname: url.hostname,
            protocol: url.protocol.replace(':', ''),
            pathname: '/api/media/**',
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
