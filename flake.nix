{
  description = "Gitvisor - Hyper-customizable Git platform dashboard";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";

    # Elixir/Erlang
    # Using nixpkgs versions for stability

    # Rust (for Tauri desktop app)
    rust-overlay = {
      url = "github:oxalica/rust-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, flake-utils, rust-overlay, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        overlays = [ (import rust-overlay) ];
        pkgs = import nixpkgs {
          inherit system overlays;
        };

        # Elixir/Erlang versions
        erlang = pkgs.erlang_27;
        elixir = pkgs.elixir_1_17;

        # Rust toolchain for Tauri
        rustToolchain = pkgs.rust-bin.stable.latest.default.override {
          extensions = [ "rust-src" "rust-analyzer" ];
          targets = [ "wasm32-unknown-unknown" ];
        };

      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            # Core languages
            erlang
            elixir
            rustToolchain
            deno

            # Ada/SPARK for TUI
            gnat
            gprbuild

            # Julia for analytics
            julia-bin

            # Build tools
            just
            gnumake

            # Node ecosystem (temporary, for bun compatibility)
            bun

            # Database clients
            arangodb
            # virtuoso - install separately if needed

            # Cryptography
            openssl
            libsodium

            # Container tools
            nerdctl

            # Git and dev tools
            git
            gh

            # Documentation
            asciidoctor

            # Linting/formatting
            treefmt

            # Static site generators
            zola
          ];

          shellHook = ''
            echo "Gitvisor Development Environment"
            echo "================================="
            echo "Elixir: $(elixir --version | head -1)"
            echo "Erlang: $(erl -eval 'erlang:display(erlang:system_info(otp_release)), halt().' -noshell)"
            echo "Deno: $(deno --version | head -1)"
            echo "Rust: $(rustc --version)"
            echo "Julia: $(julia --version)"
            echo ""
            echo "Run 'just' to see available commands"
          '';

          # Environment variables
          MIX_HOME = ".nix-mix";
          HEX_HOME = ".nix-hex";
          ERL_AFLAGS = "-kernel shell_history enabled";
        };

        # Packages
        packages = {
          # Add built packages here as project matures
        };
      }
    );
}
