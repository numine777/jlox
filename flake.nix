{
  description = "Development environment for jlox";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        sys_pkgs = { aarch64-darwin = "x86_64-darwin"; x86_64-darwin = "x86_64-darwin"; x86_64-linux = "x86_64-linux"; };
        sys_name = sys_pkgs.${system};
        pkgs = nixpkgs.legacyPackages.${sys_name};
        packageName = "jlox";
      in
      {
        # Only useful for NixOS
        # devShell = (pkgs.buildFHSUserEnv {
        #   name = "jlox-dev-env";
        #   targetPkgs = pkgs: (with pkgs; [
        #     bazel_5
        #     git
        #     glibc
        #     gcc
        #     jdk11_headless
        #     zlib
        #   ]);
        # }).env;
        devShell = pkgs.mkShell {
          packages = with pkgs; [
            bazel_5
            git
            glibc
            gcc
            jdk11_headless
          ];
        };
      });
}
