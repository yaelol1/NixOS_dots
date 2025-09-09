{pkgs, lib, inputs, ... }:{
  programs.hyprland.enable = true;
  programs.hyprland.package = inputs.hyprland.packages."${pkgs.system}".hyprland;

  environment.systemPackages = with pkgs; [
    swww
    waybar
  ];

fonts.packages = with pkgs; [
  nerd-fonts.fira-code
  nerd-fonts.fira-mono
  nerd-fonts.jetbrains-mono
  nerd-fonts.mononoki
  nerd-fonts.droid-sans-mono
  nerd-fonts.droid-sans-mono
  nerd-fonts.noto
  nerd-fonts.space-mono
  nerd-fonts.iosevka
  nerd-fonts.hack
  nerd-fonts.hurmit
  nerd-fonts.symbols-only
  nerd-fonts.ubuntu
  ];

}

