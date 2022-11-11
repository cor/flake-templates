{
	description = "Nix flake templates by @cor";

	outputs = _: {
		templates = {
			rust = rec {
				description = "Rust flake template with `rust-analyzer`, `clippy`, and `bacon`. Built using `flake-parts` and `rust-overlay`.";
				path = ./rust;
				welcomeText = ''
					# Rust flake template

					${description};
				'';
			};
		};
	};
}
