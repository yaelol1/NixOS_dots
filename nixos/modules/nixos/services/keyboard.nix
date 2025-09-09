{pkgs, lib, ...}:{
#services.kmonad = {
 #enable = true;
  # keyboards = {   
  #   myKMonadOutput = {
   #    device = "/dev/input/by-path/platform-i8042-serio-0-event-kbd";
   #    config = builtins.readFile /home/yxi/.config/kmonad/def.kbd;
   #  };
 #  };  
#};
environment.systemPackages = with pkgs; [
  kanata
  ];


}
