--------------------------------------------------------------------------------
-- INPUT & DEVICE CONFIGURATION
--------------------------------------------------------------------------------

hl.config({
    input = {
        -- Keyboard Layout Settings
        kb_layout = "us",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",

        -- Focus & Overrides
        follow_mouse = 1,
        float_switch_override_focus = 2,

        -- Mouse Sensitivity (0 means no modification)
        sensitivity = 0,

        -- Touchpad Settings
        touchpad = {
            natural_scroll = true,
        },
    },
})

--------------------------------------------------------------------------------
-- TOUCHPAD GESTURES
--------------------------------------------------------------------------------

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})

--------------------------------------------------------------------------------
-- PER-DEVICE OVERRIDES
--------------------------------------------------------------------------------

hl.device({
    name = "epic-mouse-v1",
    sensitivity = -0.5,
})

