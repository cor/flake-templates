# Svelte flake template

## Using this template

```bash
mkdir my-project
cd my-project
nix flake init --refresh -t github:cor/flake-templates\#svelte
```


## Initializing your project

You will need to run the following commands once in order to create your Svelte app:

```bash
nix develop
npm create svelte@latest .
echo "result" >> .gitignore
echo ".direnv" >> .gitignore
yarn
yarn add -D @sveltejs/adapter-node
```

Then, open the file `svelte.config.js`, and change the first line from:

```javascript
import adapter from '@sveltejs/adapter-auto';
```

to

```javascript
import adapter from '@sveltejs/adapter-node';
```

(If this doesn't work, check the [adapter-node docs](https://kit.svelte.dev/docs/adapter-node)).

Finally, run 

```bash
git init
git add -A
git commit -m "init"
```

You can now reproducibly build and run your Svelte project with Nix!

```bash
ORIGIN=http://localhost:3000 nix run
```

## Enter a Svelte devshell 

```bash
nix develop
```

## Build your project with Nix

```bash
nix build
```
