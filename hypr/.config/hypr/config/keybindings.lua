--------------------------------------------------------------------------------
-- KEYBINDINGS CONFIGURATION
--------------------------------------------------------------------------------

-- Core environment variables & modifiers
local mainMod = "SUPER"
local screenShotDir = os.getenv("HOME") .. "/Pictures/Screenshots"

local apps = require("config.defaults") 

-- Reusable helper to cleanly bind standard Hyprland actions
local function bind_cmd(mod, key, dispatcher, arg)
    hl.bind(mod, key, function()
        hl.dispatch(dispatcher, arg)
    end)
end

--------------------------------------------------------------------------------
-- CORE APPLICATION LAUNCHERS & SYSTEM CONTEXTS
--------------------------------------------------------------------------------

hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(apps.terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(apps.fileManager))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(apps.menu))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))

-- Window Management & Lifecycle
hl.bind(mainMod .. " + C", hl.dsp.window.kill())
hl.bind(mainMod .. " + M", hl.dsp.exit())
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))

--------------------------------------------------------------------------------
-- WINDOW NAVIGATION & FOCUS
--------------------------------------------------------------------------------

hl.bind(mainMod .. " + LEFT",  hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + RIGHT", hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + UP",    hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + DOWN",  hl.dsp.focus({ direction = "d" }))

--------------------------------------------------------------------------------
-- WORKSPACE MANAGEMENT (Loops 1-10)
--------------------------------------------------------------------------------

for i = 1, 10 do
    local key = (i == 10) and "0" or tostring(i)
    
    -- Switch to workspace (e.g., "SUPER + 1")
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = tostring(i) }))
    
    -- Move active window to workspace (e.g., "SUPER + SHIFT + 1")
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = tostring(i) }))
end

-- Scratchpad / Special Workspace
hl.bind(mainMod .. " + S", hl.dsp.focus({ workspace = "special:magic" }))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Workspace Scrolling via Mouse Wheel
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e+1" }))

--------------------------------------------------------------------------------
-- HYPERSHOT SCREENSHOT BINDINGS
--------------------------------------------------------------------------------

hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -zm region -o " .. screenShotDir))
hl.bind("SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -zm window -o " .. screenShotDir))

hl.bind(mainMod .. " + SHIFT + " .. "PRINT", hl.dsp.exec_cmd("hyprshot -zm output -o " .. screenShotDir))

--------------------------------------------------------------------------------
-- MOUSE WINDOW CONTROL (Dragging and Resizing)
--------------------------------------------------------------------------------

-- Left Mouse Button (mouse:272) dragging -> hl.dsp.window.drag()
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })

-- Right Mouse Button (mouse:273) resizing -> hl.dsp.window.resize()
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

--------------------------------------------------------------------------------
-- HARDWARE & MULTIMEDIA KEYS (Requires locked enabled, repeating disabled)
--------------------------------------------------------------------------------

-- Audio Volume Control
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { repeating = true, locked = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),   { repeating = true, locked = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),  { repeating = true, locked = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),{ repeating = true, locked = true })

-- Screen Brightness
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { repeating = true, locked = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { repeating = true, locked = true })

-- Media Playback Control
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

