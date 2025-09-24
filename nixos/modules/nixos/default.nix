{ pkgs, lib, ...}:{

  imports = [
    ./desktopApps/browsers.nix
    ./desktopApps/terminal.nix
    ./desktopApps/dev.nix
    ./desktopApps/study.nix
    ./desktopApps/theHighSeas.nix
    ./desktopApps/office.nix
    ./desktopApps/launcher.nix
    ./desktopApps/mediaTools.nix
    ./cliApps/cDev.nix
    ./cliApps/dev.nix
    ./services/bluetooth.nix
    ./services/audio.nix
    ./services/de.nix
    ./services/keyboard.nix
  ];

  virtualisation.docker.enable = true;

  environment.systemPackages = with pkgs; [
    nm-tray

  ];

}
