{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    systems.url = "github:nix-systems/default";
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      systems = import inputs.systems;

      imports = [
        inputs.treefmt-nix.flakeModule
      ];

      perSystem =
        { pkgs, ... }:
        {
          treefmt = {
            projectRootFile = "flake.nix";
            programs.nixfmt.enable = true;
            programs.perltidy.enable = true;
            settings.formatter.perltidy = {
              #perltidyrc = ./.perltidyrc;
              includes = [
                "*.pl"
                "*.PL"
                "*.pm"
                "*.PM"
                "*.t"
              ];
            };
          };

          devShells.default = pkgs.mkShell {
            nativeBuildInputs = [
              pkgs.perl
              pkgs.perlPackages.Moose
              pkgs.perlPackages.ExtUtilsMakeMaker
            ];
          };
        };
    };
}
