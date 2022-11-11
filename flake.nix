{
  description = "Rust flake template";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    rust-overlay = {
      url = "github:oxalica/rust-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { self, nixpkgs, rust-overlay, flake-parts, ... }: flake-parts.lib.mkFlake { inherit self; } {
    systems = [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin" ];
    perSystem = { config, self', inputs', pkgs, system, ... }: {
      packages = {
        rust-stable = inputs'.rust-overlay.packages.rust.override {
          extensions = [
            "rust-src"
            "rust-analyzer"
            "clippy"
          ];
        };
      };
      devShells = {
        default =
          pkgs.mkShell {
            buildInputs = [ self'.packages.rust-stable ] ++ (with pkgs; [ bacon rnix-lsp ]);
          };
      };
    };
  };
}
