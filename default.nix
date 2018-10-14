{ pkgs ? import ./pkgs.nix {} }:
with pkgs; with (import ./nodepkgs {inherit pkgs;});
stdenv.lib.overrideDerivation (
  haskellPackages.developPackage {
    root = ./.;
  }) (x: {
  nativeBuildInputs = x.nativeBuildInputs ++ [
    chromium
    autoprefixer-cli
    clean-css-cli
  ];
  postUnpack   = "(cd $sourceRoot && rm -rf index.html dist lang res/style.prefix.min.css)";
  buildPhase   = "NO_CONFIGURE=true bash build";
  postInstall  = "cp -r index.html res lang $out";
})
