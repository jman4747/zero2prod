{ pkgs ? import <nixpkgs> {}
}:

pkgs.mkShell {
    name="dev-environment";
    buildInputs = [
        pkgs.lld_9
        pkgs.cargo-watch
        pkgs.cargo
        pkgs.rustc
    ];

    shellHook = ''
        echo "default rust dev environment"
        echo "run: cargo watch -x check -x test -x run"
    '';

}

