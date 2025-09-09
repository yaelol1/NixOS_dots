{ pkgs, lib, ...}:{

  imports = [
    ./desktopApps/browsers.nix
    ./desktopApps/terminal.nix
    ./desktopApps/launcher.nix
    ./desktopApps/mediaTools.nix
    ./services/bluetooth.nix
    ./services/audio.nix
    ./services/de.nix
    ./services/keyboard.nix
  ];

  virtualisation.docker.enable = true;

  # Calibre-Web
  services.calibre-web= {
    enable = true;
    listen = {
      ip = "127.0.0.1";
      port = 8083;
    };
    options = {
      calibreLibrary = "/books";
      enableBookUploading = true;
      enableBookConversion = true;
    };
  };

  environment.systemPackages = with pkgs; [
    obsidian
    obs-studio
    transmission_4
    transmission_4-gtk
    git
    calibre
    exercism
    bat
    eza
    glow
    anki
    cmake
    syncthing
    typst
    tinymist
    emacs
    vim
    unzip
    zip
    zoom-us
    zotero
    wget
  ];

}
