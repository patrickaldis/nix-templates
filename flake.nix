{
  description = "My Nix Flake Templates";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs}: {
    templates = {
      web-app = {
        path = ./web-app;
        description = "Web app nix template";
      };
    };
  };
}
