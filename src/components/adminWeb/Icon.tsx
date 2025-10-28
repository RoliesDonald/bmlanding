import Image from 'next/image'
import React from 'react'
import logo from '@/assets/logoBm.svg'

export default function Icon() {
  return (
    <div>
      <Image src={logo} className="w-40" alt="" />
    </div>
  )
}
