{ cabal, conduit, filepath, hspec, stm, time, transformers }:

cabal.mkDerivation (self: {
  pname = "unix-process-conduit";
  version = "0.2.2.3";
  sha256 = "0ldgjwdvshggygxn9fpnxvb01dba0q0bn9f7iiw5xgqhli46nvcy";
  buildDepends = [ conduit filepath stm time transformers ];
  testDepends = [ conduit hspec transformers ];
  meta = {
    homepage = "https://github.com/snoyberg/conduit";
    description = "Run processes on Unix systems, with a conduit interface (deprecated)";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})
