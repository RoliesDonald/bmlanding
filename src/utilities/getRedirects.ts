import { unstable_cache } from 'next/cache'
import { getPayloadClient } from './getPayloadClient'
import type { Redirect } from '@/payload-types'

async function getRedirects() {
  const payload = await getPayloadClient()

  // const payload = await getPayload({ config: configPromise })

  const redirects = await payload.find({
    collection: 'redirects',
    depth: 0,
    limit: 1000,
    pagination: false,
  })

  return redirects.docs
}

/**
 * Returns a unstable_cache function mapped with the cache tag for 'redirects'.
 *
 * Cache all redirects together to avoid multiple fetches.
 */
export const getCachedRedirects = () =>
  unstable_cache(async () => getRedirects(), ['redirects'], {
    tags: ['redirects'],
  })
