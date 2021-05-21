/** @type {import("snowpack").SnowpackUserConfig } */
const config = {
  devOptions: {
    port: 5004
  },
  exclude: ['**/*.res'],
  mount: {
    public: {
      static: true,
      url: '/'
    },
    src: '/dist/'
  },
}

export default config;