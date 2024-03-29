const plugin = require("tailwindcss/plugin")

const colors = ["primary", "secondary", "background"]
const variants = {
  "bg": "background",
  "border": "border"
}

/** @type {import('tailwindcss').Config} */
module.exports = {
  theme: {
    extend: {
      fontFamily: {
        'inter-var': ["Inter Var", "sans-serif"],
        'poppins': ["Poppins", "sans-serif"],
      },
      colors: {
        "primary": "rgb(var(--primary))",
        "secondary": "rgb(var(--secondary))",
        "background": "rgb(var(--background))",
      },
      opacity: {
        "border": "var(--border-opacity)",
        "background": "var(--background-opacity)",
      },
      screens: {
        'phone': '400px',
        'xs': '480px'
      },
      spacing: {
        'safe-left': "env(safe-area-inset-left)",
        'safe-right': "env(safe-area-inset-right)",
        'safe-top': "env(safe-area-inset-top)",
        'safe-bottom': "env(safe-area-inset-bottom)",
      }
    },
  },
  content: [
    "src/index.html",
    "src/**/*.svelte",
    "web-std/packages/**/*.{svelte,ts}"
  ],
  plugins: [
    require('@tailwindcss/line-clamp'),
    plugin(function ({ addUtilities }) {
      for (const variant in variants) {
        const map = {}
        for (const color of colors) {
          map[`.${variant}-${color}-clear`] = {
            [`${variants[variant]}-color`]: `rgba(var(--${color}), var(--${variant}-opacity))`,
          }
        }
        addUtilities(map)
      }
    })
  ],
}
