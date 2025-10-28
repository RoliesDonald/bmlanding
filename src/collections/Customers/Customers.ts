import { CollectionConfig } from 'payload'

export const Customer: CollectionConfig = {
  slug: 'customer',
  admin: {
    useAsTitle: 'customerName',
    defaultColumns: ['customerName', 'customerLogo', 'websiteUrl'],
  },
  fields: [
    {
      name: 'customerName',
      type: 'text',
      required: true,
      label: 'Customer Name',
    },
    {
      name: 'customerLogo',
      type: 'upload',
      relationTo: 'media',
      required: true,
      label: 'Customer Logo',
      admin: {
        description: 'Harap Upload format PNG dengan background transparant',
      },
    },
    {
      name: 'websiteUrl',
      type: 'text',
      label: 'Website URL',
      admin: {
        placeholder: 'https://www.example.com',
      },
    },
    {
      name: 'isActive',
      type: 'checkbox',
      label: 'Tampilkan Customer ?',
      admin: {
        description: 'Centang untuk menampilkan Customer di carousel',
      },
    },
  ],
}
