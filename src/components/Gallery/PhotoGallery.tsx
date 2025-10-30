import { Gallery } from '@/payload-types'
import Image from 'next/image'

const PhotoGallery = ({ photos }: { photos: Gallery[] }) => {
  if (!photos || photos.length === 0) {
    return <p className="font-semibold text-2xl text-red-500">Belum ada foto yang tersedia.</p>
  }

  return (
    <div className="grid grid-cols-1 sm:grid-cols-3 lg:grid-cols-4 gap-4">
      {photos.map((photo) => {
        console.log('Photo object fom front end', photo)
        return (
          <div
            key={photo.id}
            className="group relative block aspect-square overflow-hidden rounded-lg shadow-lg"
          >
            <Image
              src={`${photo.image.url}?w=600&h=600`}
              alt={photo.title}
              width={100}
              height={100}
              className="h-full w-full object-cover transition-transform duration-300 ease-in-out group-hover:scale-105"
            />
            <div className="absolute inset-0 flex flex-col items-center justify-center bg-black bg-opacity-60 p-4 text-center opacity-0 transition-opacity duration-300 group-hover:opacity-100">
              <h3 className="text-lg font-semibold text-white">{photo.title}</h3>
              {photo.description && (
                <p className="mt-2 text-sm text-gray-200">{photo.description}</p>
              )}
            </div>
          </div>
        )
      })}
    </div>
  )
}

export default PhotoGallery
