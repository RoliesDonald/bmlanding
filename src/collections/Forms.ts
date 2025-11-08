import type { CollectionConfig } from 'payload'

export const Forms: CollectionConfig = {
  slug: 'forms',
  admin: {
    useAsTitle: 'title',
  },
  fields: [
    {
      name: 'title',
      type: 'text',
      required: true,
    },
    // Add other fields as needed for mock
  ],
}
