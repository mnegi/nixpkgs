{ cabal, shakespeare }:

cabal.mkDerivation (self: {
  pname = "hamlet";
  version = "1.2.0";
  sha256 = "0rla3ap3malk8j6mh07fr2aqvbscpy743wrfq3skgjv3j4jlpjfi";
  buildDepends = [ shakespeare ];
  noHaddock = true;
  meta = {
    homepage = "http://www.yesodweb.com/book/shakespearean-templates";
    description = "Haml-like template files that are compile-time checked (deprecated)";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
