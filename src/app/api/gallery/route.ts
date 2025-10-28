import { NextRequest, NextResponse } from 'next/server'
import { getPayload } from 'payload'
import config from '@/payload.config'

export async function GET() {
  const payload = await getPayload({ config })

  try {
    const data = await payload.find({
      collection: 'gallery',
      where: {
        isActive: { equals: true },
      },
      sort: 'order',
      depth: 2,
    })
    return NextResponse.json(data.docs)
  } catch (error) {
    return NextResponse.json({ error: 'Failed to get galleries' }, { status: 500 })
  }
}

export async function POST(req: NextRequest) {
  const payload = await getPayload({ config })

  try {
    const formData = await req.formData()
    const payloadString = formData.get('_payload') as string

    const data = JSON.parse(payloadString)

    const newDoc = await payload.create({
      collection: 'gallery',
      data: data,
    })

    return NextResponse.json({ doc: newDoc }, { status: 201 })
  } catch (error) {
    console.error('Failed to create gallery photo via custom API:', error)
    return NextResponse.json({ error: 'Failed to create gallery photo' }, { status: 500 })
  }
}
