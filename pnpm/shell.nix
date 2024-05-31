{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.nodejs
    pkgs.pnpm
  ];

  shellHook = ''
    echo "Welcome to the pnpm development environment!"
    echo "Node.js version: $(node -v)"
    echo "pnpm version: $(pnpm -v)"
  '';
}

