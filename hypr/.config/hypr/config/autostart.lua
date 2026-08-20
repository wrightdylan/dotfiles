--------------------------------------------------------------------------------
-- AUTOSTART CONFIGURATION
--------------------------------------------------------------------------------

-- Explicitly load default application choices from table module
local apps = require("config.defaults")
local home = os.getenv("HOME")

-- Listen for the compositor boot event to trigger your application stack
hl.on("hyprland.start", function()
    
    -- Hardware & Drivers
    hl.exec_cmd("brightnessctl -sd asus::kbd_backlight set 1")
    hl.exec_cmd("elephant")

    -- Desktop Shell Components
    hl.exec_cmd("waybar")
    hl.exec_cmd("swaync")

    -- Authentication Agent
    hl.exec_cmd("systemctl --user start hyprpolkitagent")

    -- Custom Desktop Scripts
    hl.exec_cmd(home .. "/.config/hypr/scripts/wallpaper-rotator.sh")

    -- Idle Management (Reads directly from your table module choice)
    hl.exec_cmd(apps.idlehandler)

end)
