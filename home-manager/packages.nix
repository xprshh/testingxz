{pkgs, ...}: {
  imports = [
    ./modules/packages.nix
    ./scripts/blocks.nix
    ./scripts/nx-switch.nix
    ./scripts/vault.nix
  #  ./scripts/rust-dev.nix
   # ./scripts/vala-dev.nix
    ./scripts/nx-clean.nix
    ./scripts/sleep-or-die.nix
  ];

  packages = with pkgs; {
    linux = [
      (mpv.override {scripts = [mpvScripts.mpris];})
      spotify
      gnome-secrets
      fragments
      # yabridge
      # yabridgectl
      # wine-staging
      nodejs
    ];
    cli = [
      bat
      eza
      fd
      ripgrep
      fzf
      lazydocker
      lazygit
    ];
  };
}
