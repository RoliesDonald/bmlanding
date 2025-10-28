import Image from 'next/image'
import React from 'react'
import logo from '@/assets/logoBM.png'

export default function Logo() {
  return (
    <div>
      <Image src={logo} className="h-20 object-contain dark:hidden" alt="" />
      {/* <Image src={logo} className="h-20 object-contain hidden dark:block" alt="" /> */}
    </div>
  )
}
