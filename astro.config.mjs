import { defineConfig } from 'astro/config';
import nodeAdapter from '@astrojs/node';
import tailwind from '@astrojs/tailwind';

export default defineConfig({
  output: 'server',
  adapter: nodeAdapter({ mode: 'standalone' }),
  integrations: [tailwind()]
});







