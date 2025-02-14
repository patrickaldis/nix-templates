{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = {self, nixpkgs}:
    let
      pkgsFor = system: import nixpkgs { inherit system; };
    in {
    devShells.x86_64-linux.default = (pkgsFor "x86_64-linux").mkShell {
      buildInputs = with pkgsFor "x86_64-linux";[
        yarn
        nodePackages.typescript-language-server
        nodejs
      ];
    };
  };
}
