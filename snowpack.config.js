/** @type {import("snowpack").SnowpackUserConfig } */
const config = {
  devOptions: {
    port: 5004,
    tailwindConfig: './tailwind.config.cjs',
  },
  exclude: ['**/*.res'],
  mount: {
    public: {
      static: true,
      url: '/'
    },
    src: '/dist/'
  },
  plugins: [
    '@snowpack/plugin-postcss',
  ],
}

export default config;