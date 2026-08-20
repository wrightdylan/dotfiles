--------------------------------------------------------------------------------
-- ENVIRONMENT VARIABLES CONFIGURATION
--------------------------------------------------------------------------------

local home = os.getenv("HOME")
local sys_path = os.getenv("PATH")

-- Systemd / DBus Exported Variables (Old 'envd')
-- Passing 'true' as the third argument replicates the 'envd' behavior
hl.env("XCURSOR_SIZE", "24", true)
hl.env("HYPRCURSOR_SIZE", "24", true)
hl.env("QT_CURSOR_SIZE", "24", true)

-- Replaced tilde and $HOME strings with dynamic Lua concatenation
hl.env("HYPERSHOT_DIR", home .. "/Pictures/Screenshots")
hl.env("XDG_PICTURES_DIR", home .. "/Pictures/Screenshots")
hl.env("PATH", home .. "/.local/bin:" .. sys_path)

-- Toolkit Backends
hl.env("GDK_BACKEND", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")
hl.env("XDG_MENU_PREFIX", "arch-")

-- Wayland Desktop Contexts
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- Default Terminal Contexts
hl.env("TERMINAL", "kitty")
hl.env("TERM", "kitty")

