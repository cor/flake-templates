# flake-templates

Templates that can be used with the [Nix](https://nixos.org) Flakes system. 

## Rust

```sh
mkdir my-project
nix flake init --refresh -t github:cor/flake-templates\#rust
```


[Read the full Rust instructions here](./rust.md)

## Svelte

```sh
mkdir my-project
nix flake init --refresh -t github:cor/flake-templates\#svelte
```

[Read the full Svelte instructions here](./svelte.md)


## Other 

To see which templates are defined by this repository, run

```sh
nix flake show github:cor/flake-templates
```

