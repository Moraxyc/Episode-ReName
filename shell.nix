let
  pkgs = import <nixpkgs> { };
in
pkgs.mkShellNoCC {
  packages = with pkgs; [
    python3
    uv
  ];
  shellHook = ''
    unset PYTHONPATH
    uv sync
    . .venv/bin/activate
  '';
}
