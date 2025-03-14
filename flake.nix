{
  description = "Go development environment";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = [ 
            pkgs.go
            # Instead of creating a wrapper, install the actual tool
            pkgs.go.pkgs.iocgo or pkgs.go
        ];
        shellHook = ''
          export GOPATH="$HOME/go"
          export PATH="$GOPATH/bin:$PATH"
          mkdir -p bin/linux
          cp helper bin/linux
          # get helper from source https://github.com/bincooo/chatgpt-adapter/releases/download/v3.0.0/Archive.zip
        '';
      };
    };
}