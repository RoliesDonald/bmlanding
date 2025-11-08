import { getClientSideURL } from '@/utilities/getURL'

/**
 * Processes media resource URL to ensure proper formatting
 * @param url The original URL from the resource
 * @param cacheTag Optional cache tag to append to the URL
 * @returns Properly formatted URL with cache tag if provided
 */
export const getMediaUrl = (url: string | null | undefined, cacheTag?: string | null): string => {
  if (!url) return ''

  //awal logic baypass
  if (url.startsWith('/cms/api/media/file/')) {
    const staticUrl = url.replace('cms/api/media/file/', '/cms/media/')

    if (cacheTag && cacheTag !== '') {
      cacheTag = encodeURIComponent(cacheTag)
      return `${staticUrl}?${cacheTag}`
    }
    return staticUrl
  }

  // Use static URLs for media instead of API to avoid loading issues
  if (url.startsWith('/api/media/')) {
    const staticUrl = url.replace('/api/media/', '/media/')

    if (cacheTag && cacheTag !== '') {
      cacheTag = encodeURIComponent(cacheTag)
      return `${staticUrl}?${cacheTag}`
    }
    return staticUrl
  }

  if (cacheTag && cacheTag !== '') {
    cacheTag = encodeURIComponent(cacheTag)
  }

  // Check if URL already has http/https protocol
  if (url.startsWith('http://') || url.startsWith('https://')) {
    return cacheTag ? `${url}?${cacheTag}` : url
  }

  // Otherwise prepend client-side URL
  const baseUrl = getClientSideURL()
  return cacheTag ? `${baseUrl}${url}?${cacheTag}` : `${baseUrl}${url}`
}
