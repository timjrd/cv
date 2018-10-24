{ pkgs ? import ./pkgs.nix }:
let p = import pkgs {}; in with p;
stdenv.lib.overrideDerivation (import ./. {inherit pkgs;}) (x: {
  nativeBuildInputs = x.nativeBuildInputs ++ [
    caddy
  ];
})
