{ pkgs ? import ./pkgs.nix {} }:
with pkgs;
stdenv.lib.overrideDerivation (
  haskellPackages.developPackage {
    root = ./.;
  }) (x: {
  nativeBuildInputs = x.nativeBuildInputs ++ [
    chromium
  ];
  postUnpack   = "(cd $sourceRoot && rm -rf dist lang)";
  buildPhase   = "NO_CONFIGURE=true bash build";
  postInstall  = "cp -r index.html res lang $out";
})
