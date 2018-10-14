{ pkgs ? import ./pkgs.nix {} }:
with pkgs;
stdenv.lib.overrideDerivation (import ./. {inherit pkgs;}) (x: {
  nativeBuildInputs = x.nativeBuildInputs ++ [
    caddy
  ];
})
