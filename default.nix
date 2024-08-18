{ pkgs ? import ./pkgs.nix }:
let p = import pkgs {}; in
with p; with (import ./nodepkgs {pkgs=p;});
stdenv.lib.overrideDerivation (
  haskellPackages.developPackage {
    root = ./.;
  }) (x: {
  nativeBuildInputs = x.nativeBuildInputs ++ [
    chromium
    autoprefixer-cli
    clean-css-cli
    poppler_utils
  ];
  postUnpack   = "(cd $sourceRoot && rm -rf index.html dist lang res/style.prefix.min.css)";
  buildPhase   = "NO_CONFIGURE=true bash build";
  postInstall  = "cp -r index.html res lang $out";
})
