echo "Setup script is running for sveltekit and shadcn."

npm create svelte@latest weights
cd weights
npx @svelte-add/tailwindcss@latest
npm install

echo "Making jsconfig.json file"
touch jsconfig.json
echo '{
  "extends": "./.svelte-kit/tsconfig.json"
}' > jsconfig.json

echo "File made, ls: "
ls

npx shadcn-svelte@latest init

echo "Installing components now: "
npx shadcn-svelte@latest add

# I should automate a lot of the key pressing etc, maybe git add everything then have it as template basically