// astro.config.mjs
import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';
import node from '@astrojs/node';

export default defineConfig({
  integrations: [tailwind()],          // Tailwind CSS integration ✅
  output: 'server',                    // Enables SSR output ✅
  adapter: node({                      // Uses the Node.js adapter ✅
    mode: 'standalone',                // Ensures a self-contained server bundle ✅
  }),
});





