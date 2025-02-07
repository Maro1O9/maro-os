{...}:
{
  # Waybar configuration
  programs.waybar = {
   enable = true;

   settings = {
     mainBar = {
       layer = "top";
       height = 23;
       margin = "0";
       spacing = 10;

       modules-left = [
        "custom/luancher"
        "hyprland/window"
        "custom/texttwo"
        "custom/textthree"
        "custom/textfour"
        "custom/textfive"
       ];

       modules-right = [
        "image#ethernetart"
        "custom/date"
        "clock"
        "battery"
      ];

      battery = {
        format = "{icon}  {capacity}%";
        format-alt = "{time} {icon}";
        format-icons = {
          charging = ["" "" "" "" ""];
          discharging = ["" "" "" "" ""];
          full = "";
        };
        states = {
          warning = 30;
          critical = 15;
        };
        interval = 10;
      };
      clock = {
        format = "{:%I:%M %p}";
        tooltip-format = "{:%A, %B %d, %Y}";
      };
      "custom/date" = {
        #put you user here
        exec ="~/maro-os/home/display/hyprland/waybar/scripts/custom_date.sh";
        interval= 60;
        tooltip = false;
      };
      "hyprland/window" = {
        format = "{class}";
        max-length = 20;
        rewrite = {
          # // if any window is focused display Finder
          "^(?!.*\\S).*" = "Finder";
        };
        "custom/launcher" = {
          format = "";
        };
        "custom/texttwo" = {
          exec =  "echo 'File'";
          interval = 60;
          return-type = "plain";
          on-click = "dolphn"; #or you favorite Filer Explorer
        };
        "custom/textthree" = {
          exec = "echo 'Edit'";
          interval = 60;
          return-type = "plain";
          on-click = "krita"; #or you favorite Image editor
        };
        "custom/textfour" = {
          exec = "echo 'View'";
          interval = 60;
          return-type = "plain";
        };
        "custom/textfive" = {
          exec = "echo 'Help'";
          interval = 60;
          return-type = "plain";
          on-click =  "yad --title='Help' --text-info --width=600 --height=400 --filename=<(man hyprland | col -bx)";
        };
        "image#ethernetart" = {
          # // put you username here
          path = "~/maro-os/home/display/hyprland/waybar/icons/wifi.png";
          size = 13;
          interval = 60;
        };
      };
     };
   };
  };
}
