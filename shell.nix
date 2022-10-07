with import <unstable> { };
stdenv.mkDerivation {
  name = "shell";
  buildInputs = with pkgs; [
    gcc
    ccls
    lldb

  ];
  shellHook = ''
    set -o vi
    alias v='vim'
  '';
}
