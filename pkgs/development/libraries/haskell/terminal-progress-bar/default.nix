{ cabal, baseUnicodeSymbols, HUnit, stm, stmChans, testFramework
, testFrameworkHunit
}:

cabal.mkDerivation (self: {
  pname = "terminal-progress-bar";
  version = "0.0.1.4";
  sha256 = "0ldvii23ks446xrd27aklh8s8pn1yi3dzhhzl05gipjqbhq3lsx3";
  buildDepends = [ baseUnicodeSymbols stm stmChans ];
  testDepends = [
    baseUnicodeSymbols HUnit testFramework testFrameworkHunit
  ];
  meta = {
    homepage = "https://github.com/roelvandijk/terminal-progress-bar";
    description = "A simple progress bar in the terminal";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
