'use client'

import React, { useState } from 'react'

import type { Header as HeaderType } from '@/payload-types'

import { CMSLink } from '@/components/Link'
import Link from 'next/link'
import { LucideMenu, LucideXOctagon, SearchIcon } from 'lucide-react'

export const HeaderNav: React.FC<{ data: HeaderType }> = ({ data }) => {
  const navItems = data?.navItems || []
  const [isOpen, setIsOpen] = useState(false)

  return (
    <div className="relative">
      {/* Wrapper utama nav */}
      <div className="flex items-end  md:block">
        {/* Tombol hamburger - tampil hanya di mobile */}
        <button
          className="md:hidden p-2 text-gray-200 rounded-md focus:outline-none "
          onClick={() => setIsOpen(!isOpen)}
          aria-label="Toggle Menu"
        >
          {isOpen ? <LucideMenu /> : <LucideXOctagon />}
        </button>

        {/* NAV DESKTOP */}
        <nav className="hidden md:flex flex-row gap-5 items-center justify-between pl-10">
          <div className="flex gap-4">
            {navItems.map(({ link }, i) => (
              <CMSLink
                key={i}
                {...link}
                type="reference"
                appearance="link"
                className="text-[1rem] hover:shadow-slate-400 hover:shadow-md px-2 hover:no-underline active:shadow-md active:shadow-blue-700"
              />
            ))}
          </div>
        </nav>
      </div>

      {/* NAV MOBILE */}
      <div
        className={`md:hidden transition-all duration-300 overflow-hidden ${
          isOpen ? 'max-h-96 opacity-100 py-4' : 'max-h-0 opacity-0'
        }`}
      >
        <nav className="flex flex-col items-end space-y-4">
          {navItems.map(({ link }, i) => (
            <CMSLink
              key={i}
              {...link}
              type="reference"
              appearance="link"
              className="text-white text-lg hover:text-blue-400"
              onClick={() => setIsOpen(false)}
            />
          ))}
        </nav>
      </div>
    </div>
  )
}
