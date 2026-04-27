{ pkgs, lib, ...}:{

  imports = [
    ./desktopApps/browsers.nix
    ./desktopApps/terminal.nix
    ./desktopApps/dev.nix
    ./desktopApps/study.nix
    ./desktopApps/theHighSeas.nix
    ./desktopApps/3d.nix
    ./desktopApps/office.nix
    ./desktopApps/launcher.nix
    ./desktopApps/mediaTools.nix
    ./cliApps/cDev.nix
    ./cliApps/cyber.nix
    ./cliApps/dev.nix
    ./cliApps/nh.nix
    ./services/bluetooth.nix
    ./services/audio.nix
    ./services/de.nix
    ./services/keyboard.nix
  ];

  virtualisation.docker.enable = true;

  environment.sessionVariables = {
    FLAKE = "/home/yxi/nixos";
  };

  environment.systemPackages = with pkgs; [
    nix-output-monitor
    nvd
    nh
  ];

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };


  # ssh
  services.openssh = {
    enable = true;
    ports = [ 33 ];
    settings = {
      ClientAliveInterval = 22;
      ClientAliveCountMax = 1;
      MaxAuthTries = 1;
      LoginGraceTime = 20;
      PermitRootLogin = "prohibit-password";
      PasswordAuthentication = false;
      PermitEmptyPasswords = false;
      MaxSessions = 1;
    };
  };


  # Automatic Updating
  system.autoUpgrade.enable = true;
  system.autoUpgrade.dates = "weekly";

  # Automatic Cleanup
  # nix.gc.automatic = true;
  # nix.gc.dates = "daily";
  # nix.gc.options = "--delete-older-than 10d";
  # nix.settings.auto-optimise-store = true;

  # nix-shell persistency
  nix.extraOptions = ''
    keep-outputs = true
    keep-derivations = true
  '';

}
