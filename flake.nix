{
  description = "Nix flake templates by @cor";

  outputs = _: {
    templates = {
      rust = rec {
        description =
          "Rust flake template with `rust-analyzer`, `clippy`, and `bacon`. Built using `flake-parts` and `rust-overlay`.";
        path = ./rust;
        welcomeText = ''
            # Rust flake template

            Getting started
            
            ## Enter a Rust devshell 
            
            ```bash
            nix develop
            ``` 

            ## Init and build your project with Cargo

            ```bash
            cargo init
            cargo build
            ```

            ## Build your project with nix

            ```bash
            nix build
            ```
        '';
      };
    };
  };
}
