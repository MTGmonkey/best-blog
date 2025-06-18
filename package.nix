{
  lib,
  stdenv,
  rust-http-server,
  ...
}:
stdenv.mkDerivation {
  name = "best-blog";
  src = ./.;
  nativeBuildInputs = [];
  buildInputs = [rust-http-server.packages.x86_64-linux.default];
  configurePhase = '''';
  buildPhase = '''';
  installPhase = ''
    mkdir -p $out/bin
    cp -r ./* $out/
    echo "#!/usr/bin/env bash" > bestblog
    echo "cd $(echo $out)/src/" >> bestblog
    echo "${lib.getExe rust-http-server.packages.x86_64-linux.default} --port 9345" >> bestblog
    chmod a+x bestblog
    cp bestblog $out/bin/bestblog
  '';
  meta = {
    mainProgram = "bestblog";
    description = "bare minimum blog";
    homepage = "https://mtgmonkey.net";
  };
}
