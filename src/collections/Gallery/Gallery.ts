import { anyone } from '@/access/anyone'
import { authenticated } from '@/access/authenticated'
import { CollectionConfig } from 'payload'

export const Gallery: CollectionConfig = {
  slug: 'gallery',
  admin: {
    useAsTitle: 'title',
    defaultColumns: ['image', 'title', 'order'],
  },
  access: {
    read: anyone,
    create: authenticated,
    update: authenticated,
    delete: authenticated,
  },
  fields: [
    {
      name: 'title',
      type: 'text',
      required: true,
      label: 'Judul Photo',
    },
    {
      name: 'image',
      type: 'upload',
      relationTo: 'media',
      required: true,
      label: 'File Photo',
    },
    {
      name: 'description',
      type: 'textarea',
      label: 'Deskripsi Photo',
      admin: {
        description: 'Deskripsi akan muncul saat hover',
      },
    },
    {
      name: 'order',
      type: 'number',
      label: 'Urutan',
      required: true,
      defaultValue: 1,
      admin: {
        description:
          'Nomor urut untuk menentukan posisi photo, angka lebih kecil muncul pertama kali',
      },
    },
    {
      name: 'isActive',
      type: 'checkbox',
      defaultValue: true,
      label: 'Tampilkan di Gallery ?',
    },
  ],
}
