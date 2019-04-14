{ mkDerivation, base, stdenv, wreq }:
mkDerivation {
  pname = "adam";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base ];
  executableHaskellDepends = [ base wreq ];
  doHaddock = false;
  license = stdenv.lib.licenses.bsd3;
}
