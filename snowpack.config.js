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
    '@jihchi/plugin-rescript',
    '@snowpack/plugin-postcss',
  ],
  routes: [
    {
      match: 'routes',
      src: '.*',
      dest: '/index.html',
    },
  ],
}

export default config;