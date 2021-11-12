{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    stdenv
    gzip
    fasttext
  ];
}
