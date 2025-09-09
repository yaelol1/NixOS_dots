
{ pkgs, lib, ...}:{
  environment.systemPackages = with pkgs; [
    bat
    eza
    exercism
    glow
    git
    unzip
    wget
    zip
  ];

}
