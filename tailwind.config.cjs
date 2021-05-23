const colors = require('tailwindcss/colors')

module.exports = {
  mode: 'jit',
  purge: ['./public/**/*.html', './src/**/*.js'],
  theme: {
    colors: {
      transparent: 'transparent',
      current: 'currentColor',
      canvas: {
        light: '#F5F1ED',
        DEFAULT: '#DAD2BC',
        dark: '#A99985'
      },
      raisin: {
        DEFAULT: '#252323'
      },
      slate: {
        DEFAULT: '#70798C'
      },
      black: colors.black,
      gray: colors.trueGray,
      green: colors.emerald,
      indigo: colors.indigo,
      red: colors.rose,
      white: colors.white,
      yellow: colors.amber,
    }
  }
}