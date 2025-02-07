{pkgs, ...}:
{
  programs.hyprland = {
    enable = true;

    withUWSM = true;

    xwayland.enable = true;
  };

  # Required for screen sharing
  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  # Optional: NVIDIA users may need this
  # hardware.nvidia.modesetting.enable = true;

  environment.sessionVariables.NIXOS_OZONE_WL = "1"; # Fix for Electron apps
}
