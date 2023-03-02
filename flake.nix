{
  description = "Nix flake templates by @cor";

  outputs = _: {
    templates = {
      rust = {
        description =
          "Rust flake template with `rust-analyzer`, `clippy`, and `bacon`. Built using `flake-parts` and `rust-overlay`.";
        path = ./rust;
        welcomeText = builtins.readFile ./rust.md;
      };

      svelte = {
        description =
          "Svelte flake template using `adapter-node` with `svelte-server`. Built using `flake-parts`.";
        path = ./svelte;
        welcomeText = builtins.readFile ./svelte.md;
      };
    };
  };
}
