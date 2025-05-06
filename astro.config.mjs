import { defineConfig } from 'astro/config';
import nodeAdapter from '@astrojs/node';
import tailwind from '@astrojs/tailwind';

export default defineConfig({
  output: 'server',
  adapter: nodeAdapter({ mode: 'standalone' }),
  server: {
    host: '0.0.0.0',
    port: process.env.PORT || 8080
  },
  integrations: [tailwind()]
});







