{ pkgs, lib, ...}:{

  environment.systemPackages = with pkgs; [
    vivaldi
    tor-browser
    webcord
    discord
  ];

}
