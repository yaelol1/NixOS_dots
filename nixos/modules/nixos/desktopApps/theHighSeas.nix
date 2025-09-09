{ pkgs, lib, ...}:{
  environment.systemPackages = with pkgs; [
    transmission_4
    transmission_4-gtk
  ];
}
