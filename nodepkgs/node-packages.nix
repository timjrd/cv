# This file has been generated by node2nix 1.6.0. Do not edit!

{nodeEnv, fetchurl, fetchgit, globalBuildInputs ? []}:

let
  sources = {
    "ansi-regex-2.1.1" = {
      name = "ansi-regex";
      packageName = "ansi-regex";
      version = "2.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ansi-regex/-/ansi-regex-2.1.1.tgz";
        sha1 = "c3b33ab5ee360d86e0e628f0468ae7ef27d654df";
      };
    };
    "ansi-styles-2.2.1" = {
      name = "ansi-styles";
      packageName = "ansi-styles";
      version = "2.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ansi-styles/-/ansi-styles-2.2.1.tgz";
        sha1 = "b432dd3358b634cf75e1e4664368240533c1ddbe";
      };
    };
    "autoprefixer-6.7.7" = {
      name = "autoprefixer";
      packageName = "autoprefixer";
      version = "6.7.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/autoprefixer/-/autoprefixer-6.7.7.tgz";
        sha1 = "1dbd1c835658e35ce3f9984099db00585c782014";
      };
    };
    "balanced-match-1.0.0" = {
      name = "balanced-match";
      packageName = "balanced-match";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/balanced-match/-/balanced-match-1.0.0.tgz";
        sha1 = "89b4d199ab2bee49de164ea02b89ce462d71b767";
      };
    };
    "brace-expansion-1.1.11" = {
      name = "brace-expansion";
      packageName = "brace-expansion";
      version = "1.1.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.11.tgz";
        sha512 = "iCuPHDFgrHX7H2vEI/5xpz07zSHB00TpugqhmYtVmMO6518mCuRMoOYFldEBl0g187ufozdaHgWKcYFb61qGiA==";
      };
    };
    "browserslist-1.7.7" = {
      name = "browserslist";
      packageName = "browserslist";
      version = "1.7.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/browserslist/-/browserslist-1.7.7.tgz";
        sha1 = "0bd76704258be829b2398bb50e4b62d1a166b0b9";
      };
    };
    "caniuse-db-1.0.30000890" = {
      name = "caniuse-db";
      packageName = "caniuse-db";
      version = "1.0.30000890";
      src = fetchurl {
        url = "https://registry.npmjs.org/caniuse-db/-/caniuse-db-1.0.30000890.tgz";
        sha512 = "aO5uw1Taw8GkNMMXIWOz/WJz3y6tR1ETUAdH/pvO5EoJ3I1Po9vNJd9aMjY1GKucS/OXWMiQbXRbk3O1sgCbRA==";
      };
    };
    "chalk-1.1.3" = {
      name = "chalk";
      packageName = "chalk";
      version = "1.1.3";
      src = fetchurl {
        url = "http://registry.npmjs.org/chalk/-/chalk-1.1.3.tgz";
        sha1 = "a8115c55e4a702fe4d150abd3872822a7e09fc98";
      };
    };
    "clean-css-4.2.1" = {
      name = "clean-css";
      packageName = "clean-css";
      version = "4.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/clean-css/-/clean-css-4.2.1.tgz";
        sha512 = "4ZxI6dy4lrY6FHzfiy1aEOXgu4LIsW2MhwG0VBKdcoGoH/XLFgaHSdLTGr4O8Be6A8r3MOphEiI8Gc1n0ecf3g==";
      };
    };
    "commander-2.19.0" = {
      name = "commander";
      packageName = "commander";
      version = "2.19.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/commander/-/commander-2.19.0.tgz";
        sha512 = "6tvAOO+D6OENvRAh524Dh9jcfKTYDQAqvqezbCW82xj5X0pSrcpxtvRKHLG0yBY6SD7PSDrJaj+0AiOcKVd1Xg==";
      };
    };
    "concat-map-0.0.1" = {
      name = "concat-map";
      packageName = "concat-map";
      version = "0.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz";
        sha1 = "d8a96bd77fd68df7793a73036a3ba0d5405d477b";
      };
    };
    "electron-to-chromium-1.3.79" = {
      name = "electron-to-chromium";
      packageName = "electron-to-chromium";
      version = "1.3.79";
      src = fetchurl {
        url = "https://registry.npmjs.org/electron-to-chromium/-/electron-to-chromium-1.3.79.tgz";
        sha512 = "LQdY3j4PxuUl6xfxiFruTSlCniTrTrzAd8/HfsLEMi0PUpaQ0Iy+Pr4N4VllDYjs0Hyu2lkTbvzqlG+PX9NsNw==";
      };
    };
    "escape-string-regexp-1.0.5" = {
      name = "escape-string-regexp";
      packageName = "escape-string-regexp";
      version = "1.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-1.0.5.tgz";
        sha1 = "1b61c0562190a8dff6ae3bb2cf0200ca130b86d4";
      };
    };
    "fs-extra-0.24.0" = {
      name = "fs-extra";
      packageName = "fs-extra";
      version = "0.24.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/fs-extra/-/fs-extra-0.24.0.tgz";
        sha1 = "d4e4342a96675cb7846633a6099249332b539952";
      };
    };
    "fs.realpath-1.0.0" = {
      name = "fs.realpath";
      packageName = "fs.realpath";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/fs.realpath/-/fs.realpath-1.0.0.tgz";
        sha1 = "1504ad2523158caa40db4a2787cb01411994ea4f";
      };
    };
    "glob-7.1.3" = {
      name = "glob";
      packageName = "glob";
      version = "7.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/glob/-/glob-7.1.3.tgz";
        sha512 = "vcfuiIxogLV4DlGBHIUOwI0IbrJ8HWPc4MU7HzviGeNho/UJDfi6B5p3sHeWIQ0KGIU0Jpxi5ZHxemQfLkkAwQ==";
      };
    };
    "graceful-fs-4.1.11" = {
      name = "graceful-fs";
      packageName = "graceful-fs";
      version = "4.1.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/graceful-fs/-/graceful-fs-4.1.11.tgz";
        sha1 = "0e8bdfe4d1ddb8854d64e04ea7c00e2a026e5658";
      };
    };
    "has-ansi-2.0.0" = {
      name = "has-ansi";
      packageName = "has-ansi";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/has-ansi/-/has-ansi-2.0.0.tgz";
        sha1 = "34f5049ce1ecdf2b0649af3ef24e45ed35416d91";
      };
    };
    "has-flag-1.0.0" = {
      name = "has-flag";
      packageName = "has-flag";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/has-flag/-/has-flag-1.0.0.tgz";
        sha1 = "9d9e793165ce017a00f00418c43f942a7b1d11fa";
      };
    };
    "inflight-1.0.6" = {
      name = "inflight";
      packageName = "inflight";
      version = "1.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/inflight/-/inflight-1.0.6.tgz";
        sha1 = "49bd6331d7d02d0c09bc910a1075ba8165b56df9";
      };
    };
    "inherits-2.0.3" = {
      name = "inherits";
      packageName = "inherits";
      version = "2.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/inherits/-/inherits-2.0.3.tgz";
        sha1 = "633c2c83e3da42a502f52466022480f4208261de";
      };
    };
    "js-base64-2.4.9" = {
      name = "js-base64";
      packageName = "js-base64";
      version = "2.4.9";
      src = fetchurl {
        url = "https://registry.npmjs.org/js-base64/-/js-base64-2.4.9.tgz";
        sha512 = "xcinL3AuDJk7VSzsHgb9DvvIXayBbadtMZ4HFPx8rUszbW1MuNMlwYVC4zzCZ6e1sqZpnNS5ZFYOhXqA39T7LQ==";
      };
    };
    "jsonfile-2.4.0" = {
      name = "jsonfile";
      packageName = "jsonfile";
      version = "2.4.0";
      src = fetchurl {
        url = "http://registry.npmjs.org/jsonfile/-/jsonfile-2.4.0.tgz";
        sha1 = "3736a2b428b87bbda0cc83b53fa3d633a35c2ae8";
      };
    };
    "minimatch-3.0.4" = {
      name = "minimatch";
      packageName = "minimatch";
      version = "3.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/minimatch/-/minimatch-3.0.4.tgz";
        sha512 = "yJHVQEhyqPLUTgt9B83PXu6W3rx4MvvHvSUvToogpwoGDOUQ+yDrR0HRot+yOCdCO7u4hX3pWft6kWBBcqh0UA==";
      };
    };
    "normalize-range-0.1.2" = {
      name = "normalize-range";
      packageName = "normalize-range";
      version = "0.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/normalize-range/-/normalize-range-0.1.2.tgz";
        sha1 = "2d10c06bdfd312ea9777695a4d28439456b75942";
      };
    };
    "num2fraction-1.2.2" = {
      name = "num2fraction";
      packageName = "num2fraction";
      version = "1.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/num2fraction/-/num2fraction-1.2.2.tgz";
        sha1 = "6f682b6a027a4e9ddfa4564cd2589d1d4e669ede";
      };
    };
    "once-1.4.0" = {
      name = "once";
      packageName = "once";
      version = "1.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/once/-/once-1.4.0.tgz";
        sha1 = "583b1aa775961d4b113ac17d9c50baef9dd76bd1";
      };
    };
    "path-is-absolute-1.0.1" = {
      name = "path-is-absolute";
      packageName = "path-is-absolute";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.1.tgz";
        sha1 = "174b9268735534ffbc7ace6bf53a5a9e1b5c5f5f";
      };
    };
    "postcss-5.2.18" = {
      name = "postcss";
      packageName = "postcss";
      version = "5.2.18";
      src = fetchurl {
        url = "https://registry.npmjs.org/postcss/-/postcss-5.2.18.tgz";
        sha512 = "zrUjRRe1bpXKsX1qAJNJjqZViErVuyEkMTRrwu4ud4sbTtIBRmtaYDrHmcGgmrbsW3MHfmtIf+vJumgQn+PrXg==";
      };
    };
    "postcss-value-parser-3.3.1" = {
      name = "postcss-value-parser";
      packageName = "postcss-value-parser";
      version = "3.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/postcss-value-parser/-/postcss-value-parser-3.3.1.tgz";
        sha512 = "pISE66AbVkp4fDQ7VHBwRNXzAAKJjw4Vw7nWI/+Q3vuly7SNfgYXvm6i5IgFylHGK5sP/xHAbB7N49OS4gWNyQ==";
      };
    };
    "rimraf-2.6.2" = {
      name = "rimraf";
      packageName = "rimraf";
      version = "2.6.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/rimraf/-/rimraf-2.6.2.tgz";
        sha512 = "lreewLK/BlghmxtfH36YYVg1i8IAce4TI7oao75I1g245+6BctqTVQiBP3YUJ9C6DQOXJmkYR9X9fCLtCOJc5w==";
      };
    };
    "source-map-0.5.7" = {
      name = "source-map";
      packageName = "source-map";
      version = "0.5.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/source-map/-/source-map-0.5.7.tgz";
        sha1 = "8a039d2d1021d22d1ea14c80d8ea468ba2ef3fcc";
      };
    };
    "source-map-0.6.1" = {
      name = "source-map";
      packageName = "source-map";
      version = "0.6.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/source-map/-/source-map-0.6.1.tgz";
        sha512 = "UjgapumWlbMhkBgzT7Ykc5YXUT46F0iKu8SGXq0bcwP5dz/h0Plj6enJqjz1Zbq2l5WaqYnrVbwWOWMyF3F47g==";
      };
    };
    "strip-ansi-3.0.1" = {
      name = "strip-ansi";
      packageName = "strip-ansi";
      version = "3.0.1";
      src = fetchurl {
        url = "http://registry.npmjs.org/strip-ansi/-/strip-ansi-3.0.1.tgz";
        sha1 = "6a385fb8853d952d5ff05d0e8aaf94278dc63dcf";
      };
    };
    "supports-color-2.0.0" = {
      name = "supports-color";
      packageName = "supports-color";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/supports-color/-/supports-color-2.0.0.tgz";
        sha1 = "535d045ce6b6363fa40117084629995e9df324c7";
      };
    };
    "supports-color-3.2.3" = {
      name = "supports-color";
      packageName = "supports-color";
      version = "3.2.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz";
        sha1 = "65ac0504b3954171d8a64946b2ae3cbb8a5f54f6";
      };
    };
    "wrappy-1.0.2" = {
      name = "wrappy";
      packageName = "wrappy";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/wrappy/-/wrappy-1.0.2.tgz";
        sha1 = "b5243d8f3ec1aa35f1364605bc0d1036e30ab69f";
      };
    };
  };
in
{
  autoprefixer-cli = nodeEnv.buildNodePackage {
    name = "autoprefixer-cli";
    packageName = "autoprefixer-cli";
    version = "1.0.0";
    src = fetchurl {
      url = "https://registry.npmjs.org/autoprefixer-cli/-/autoprefixer-cli-1.0.0.tgz";
      sha1 = "b7cbd890c801b38e494534271c4408ed534bbee7";
    };
    dependencies = [
      sources."ansi-regex-2.1.1"
      sources."ansi-styles-2.2.1"
      sources."autoprefixer-6.7.7"
      sources."balanced-match-1.0.0"
      sources."brace-expansion-1.1.11"
      sources."browserslist-1.7.7"
      sources."caniuse-db-1.0.30000890"
      (sources."chalk-1.1.3" // {
        dependencies = [
          sources."supports-color-2.0.0"
        ];
      })
      sources."concat-map-0.0.1"
      sources."electron-to-chromium-1.3.79"
      sources."escape-string-regexp-1.0.5"
      sources."fs-extra-0.24.0"
      sources."fs.realpath-1.0.0"
      sources."glob-7.1.3"
      sources."graceful-fs-4.1.11"
      sources."has-ansi-2.0.0"
      sources."has-flag-1.0.0"
      sources."inflight-1.0.6"
      sources."inherits-2.0.3"
      sources."js-base64-2.4.9"
      sources."jsonfile-2.4.0"
      sources."minimatch-3.0.4"
      sources."normalize-range-0.1.2"
      sources."num2fraction-1.2.2"
      sources."once-1.4.0"
      sources."path-is-absolute-1.0.1"
      sources."postcss-5.2.18"
      sources."postcss-value-parser-3.3.1"
      sources."rimraf-2.6.2"
      sources."source-map-0.5.7"
      sources."strip-ansi-3.0.1"
      sources."supports-color-3.2.3"
      sources."wrappy-1.0.2"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "CLI for Autoprefixer";
      homepage = "https://github.com/ai/autoprefixer-cli#readme";
      license = "MIT";
    };
    production = true;
    bypassCache = false;
  };
  clean-css-cli = nodeEnv.buildNodePackage {
    name = "clean-css-cli";
    packageName = "clean-css-cli";
    version = "4.2.1";
    src = fetchurl {
      url = "https://registry.npmjs.org/clean-css-cli/-/clean-css-cli-4.2.1.tgz";
      sha512 = "ST2yi9F2kAmLRs9phSpGRUm44SbRy29QGm1OuAKfTU0KCLilFMTcz+/Fxhbdi5GrsjIMhTBdFUQhc55CjM3Isw==";
    };
    dependencies = [
      sources."balanced-match-1.0.0"
      sources."brace-expansion-1.1.11"
      sources."clean-css-4.2.1"
      sources."commander-2.19.0"
      sources."concat-map-0.0.1"
      sources."fs.realpath-1.0.0"
      sources."glob-7.1.3"
      sources."inflight-1.0.6"
      sources."inherits-2.0.3"
      sources."minimatch-3.0.4"
      sources."once-1.4.0"
      sources."path-is-absolute-1.0.1"
      sources."source-map-0.6.1"
      sources."wrappy-1.0.2"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "A command-line interface to clean-css CSS optimization library";
      homepage = "https://github.com/jakubpawlowicz/clean-css-cli#readme";
      license = "MIT";
    };
    production = true;
    bypassCache = false;
  };
}