# flake-templates

Templates that can be used with the [Nix](https://nixos.org) Flakes system. 

## Rust

```sh
mkdir my-project
nix flake init --reload -t github:cor/flake-templates\#rust
```

This instantiates the `rust` flake template.

## Svelte

```sh
mkdir my-project
nix flake init --reload -t github:cor/flake-templates\#svelte
```

This instantiates the `rust` flake template.


To see which templates are defined by this repository, run

```sh
nix flake show github:cor/flake-templates
```

