{...}:
{
  imports = [
    ./waybar
  ];

 wayland.windowManager.hyprland = {
    enable = true;
    # settings = (import ./settings.nix);
    settings.source = "/home/maro/maro-os/home/display/hyprland/hyprland.conf";
 };
}
