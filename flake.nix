{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    rust-http-server.url = "git+https://git.mtgmonkey.net/Andromeda/rust-http-server.git";
  };
  outputs = {
    nixpkgs,
    rust-http-server,
    ...
  }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    packages.${system}.default = pkgs.callPackage ./package.nix {inherit rust-http-server;};
    #    nixosModules.${system}.default = ./module.nix;
  };
}
