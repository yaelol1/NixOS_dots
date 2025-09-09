{ pkgs, ... }:{

   virtualisation.virtualbox.host.enable = true;
   users.extraGroups.vboxusers.members = [ "yxi" ];

  environment.systemPackages = with pkgs; [
	  kitty
  ];

}
