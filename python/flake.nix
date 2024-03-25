{
  description = "Python flake template";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };
  outputs = inputs@{ self, nixpkgs, flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin" ];
      perSystem = { pkgs, system, ... }:
        let
          python = pkgs.python3.withPackages (pp: with pp; [
            # Add your packages here:
            pandas
          ]);
        in
        {
          devShells = {
            default = pkgs.mkShell {
              buildInputs = [ python ];
            };
          };
        };
    };
}
