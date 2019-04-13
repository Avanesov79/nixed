{ stdenv, fetchurl }:

stdenv.mkDerivation rec {
  name = "myhello-${version}";
  version = "0.01";

  src = fetchFromGitHub {
    owner = "Avanesov79";
    repo = "myhello";
    rev = "9dfe9cfc7950dc5f25c14105a4bbbbd156e1f3b7";
    sha256 = "0wbqbvkhlf84ihq8iznh224pjcm59clvbxcgrjvp8scdwqc6idh7";
  };

  doCheck = true;

  meta = with stdenv.lib; {
    description = "A program that produces a familiar, friendly greeting";
    longDescription = ''
      myhello is a program that prints "myHello, world!" when you run it.
    '';
    platforms = platforms.all;
  };
}
