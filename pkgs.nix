args:
let rev    = "45f52f765cd9c851287ca5c497f225e7eb5112d7"; # nixos-18.03 on Sep 3, 2018
    sha256 = "10lmjbq7j92zxjbd5d0p3c9d9y1c5qm4h7ym9kkx78h8q54xrkah";
in import (fetchTarball {
  url = "https://github.com/NixOS/nixpkgs-channels/archive/${rev}.tar.gz";
  inherit sha256;
}) args
