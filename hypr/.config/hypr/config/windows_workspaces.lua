--------------------------------------------------------------------------------
-- WINDOW RULES & PERSISTENT WORKSPACES
--------------------------------------------------------------------------------

-- Ignore maximize requests from all apps
hl.window_rule({
    suppress_event = "maximize",
    match = {
        class = ".*",
    },
})

-- Fix dragging issues with XWayland windows
hl.window_rule({
    no_focus = true,
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
})

--------------------------------------------------------------------------------
-- PERSISTENT WORKSPACES CONFIGURATION (1 through 5)
--------------------------------------------------------------------------------

for i = 1, 5 do
    hl.workspace_rule({
        workspace = tostring(i),
        persistent = true,
    })
end

--------------------------------------------------------------------------------
-- NATIVE GRAPHICAL CALENDAR OVERLAY RULE
--------------------------------------------------------------------------------

hl.window_rule({
    float = true,
    pin = true,               -- Stays locked over active workspaces
    no_blur = false,          
    size = { "800", "550" },  -- Morgen-style proportions
    center = true,            -- Centers over your active panel layout
    match = {
        class = "org.gnome.Calendar",
    },
})
