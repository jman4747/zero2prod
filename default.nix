# this file won't be in the git repo normally

{ pkgs ? import <nixpkgs> {}
}:

pkgs.mkShell {
    name="dev-environment";
    buildInputs = [
        pkgs.lld_9
        pkgs.cargo
        pkgs.rustc
        pkgs.cargo-watch
        pkgs.cargo-tarpaulin
        pkgs.cargo-audit
    ];

    shellHook = ''
        echo "default rust dev environment"
        echo "run: cargo watch -x check -x test -x run"
    '';

}

