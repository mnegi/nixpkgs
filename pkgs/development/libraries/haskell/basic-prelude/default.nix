{ cabal, hashable, liftedBase, ReadArgs, safe, systemFilepath, text
, transformers, unorderedContainers, vector
}:

cabal.mkDerivation (self: {
  pname = "basic-prelude";
  version = "0.3.8";
  sha256 = "0lywnsds0q1nr466s3pc2izfr58kp23z7ing9k7dlgbmh9cqxypg";
  buildDepends = [
    hashable liftedBase ReadArgs safe systemFilepath text transformers
    unorderedContainers vector
  ];
  meta = {
    homepage = "https://github.com/snoyberg/basic-prelude";
    description = "An enhanced core prelude; a common foundation for alternate preludes";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})
