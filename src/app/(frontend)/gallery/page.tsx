import { Gutter } from '@payloadcms/ui'
import type { Gallery } from '@/payload-types'
import PhotoGallery from '@/components/Gallery/PhotoGallery'
import { cn } from '@/utilities/ui'

// Fungsi untuk fetch data
async function fetchGalleryPhotos(): Promise<Gallery[]> {
  try {
    const res = await fetch(`${process.env.NEXT_PUBLIC_PAYLOAD_URL}/api/gallery`, {
      next: { tags: ['gallery'] }, // Untuk cache invalidasi
    })

    if (!res.ok) {
      console.error('Failed to fetch gallery photos')
      return []
    }

    const data = await res.json()
    return data
  } catch (error) {
    console.error('Error fetching gallery photos:', error)
    return []
  }
}

// Metadata untuk halaman
export const metadata = {
  title: 'Galeri Foto - BlackSilver Photography',
  description: 'Lihat karya-karya terbaik kami.',
}

export default async function GalleryPage() {
  const photos = await fetchGalleryPhotos()

  return (
    <main className="">
      <Gutter>
        <div className="text-center">
          <h1 className="text-4xl font-bold tracking-tight text-gray-900 sm:text-5xl">
            Galeri Foto
          </h1>
          <p className="mt-6 text-lg leading-8 text-gray-600">Beberapa karya terbaik dari kami.</p>
        </div>
        <div className="mt-16">
          <PhotoGallery photos={photos} />
        </div>
      </Gutter>
    </main>
  )
}
