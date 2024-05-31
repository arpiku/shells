{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.nodejs
    pkgs.bundler
    pkgs.jekyll
  ];

  shellHook = ''
    echo "Welcome to the pnpm development environment!"
  '';
}

