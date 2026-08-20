--------------------------------------------------------------------------------
-- MODULAR LOOK AND FEEL CONFIGURATION
--------------------------------------------------------------------------------

hl.config({
    -- General Core Parameters
    general = {
        gaps_in = 3,
        gaps_out = 10,
        border_size = 2,
        col = {
            active_border = { 
                colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, 
                angle = 45 
            },
            inactive_border = "rgba(595959aa)",
        },
        no_focus_fallback = true,
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },

    -- Window Decorations, Shadows & Blur
    decoration = {
        rounding = 8,
        rounding_power = 4,
        active_opacity = 1.0,
        inactive_opacity = 0.8,
        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },
        blur = {
            enabled = true,
            size = 3,
            passes = 1,
            vibrancy = 0.1696,
        },
    },

    -- Animations Enabled Flag
    animations = {
        enabled = true,
    },

    -- Layout Mechanics & System Misc
    dwindle = {
        preserve_split = true,
    },
    master = {
        new_status = "master",
    },
    misc = {
        force_default_wallpaper = -1,
        disable_hyprland_logo = false,
    },
    beziers = {
        { name = "easeOutQuint", x1 = 0.23, y1 = 1, x2 = 0.32, y2 = 1 },
        { name = "easeInOutCubic", x1 = 0.65, y1 = 0.05, x2 = 0.36, y2 = 1 },
        { name = "linear", x1 = 0, y1 = 0, x2 = 1, y2 = 1 },
        { name = "almostLinear", x1 = 0.5, y1 = 0.5, x2 = 0.75, y2 = 1.0 },
        { name = "quick", x1 = 0.15, y1 = 0, x2 = 0.1, y2 = 1 },
    },
    animations = {
        enabled = true,
        { target = "global", enabled = true, speed = 10, curve = "default" },
        { target = "border", enabled = true, speed = 5.39, curve = "easeOutQuint" },
        { target = "windows", enabled = true, speed = 4.79, curve = "easeOutQuint" },
        { target = "windowsIn", enabled = true, speed = 4.1, curve = "easeOutQuint", style = "popin 87%" },
        { target = "windowsOut", enabled = true, speed = 1.49, curve = "linear", style = "popin 87%" },
        { target = "fadeIn", enabled = true, speed = 1.73, curve = "almostLinear" },
        { target = "fadeOut", enabled = true, speed = 1.46, curve = "almostLinear" },
        { target = "fade", enabled = true, speed = 3.03, curve = "quick" },
        { target = "layers", enabled = true, speed = 3.81, curve = "easeOutQuint" },
        { target = "layersIn", enabled = true, speed = 4, curve = "easeOutQuint", style = "fade" },
        { target = "layersOut", enabled = true, speed = 1.5, curve = "linear", style = "fade" },
        { target = "fadeLayersIn", enabled = true, speed = 1.79, curve = "almostLinear" },
        { target = "fadeLayersOut", enabled = true, speed = 1.39, curve = "almostLinear" },
        { target = "workspaces", enabled = true, speed = 1.94, curve = "almostLinear", style = "fade" },
        { target = "workspacesIn", enabled = true, speed = 1.21, curve = "almostLinear", style = "fade" },
        { target = "workspacesOut", enabled = true, speed = 1.94, curve = "almostLinear", style = "fade" },
    },
})
