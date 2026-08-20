--------------------------------------------------------------------------------
-- MONITORS CONFIGURATION
--------------------------------------------------------------------------------

-- Fallback/Default Monitor Rule
hl.monitor({
    output = "",                  -- Leaving name empty maps this as a fallback rule
    mode = "preferred",           -- Uses display's native resolution
    position = "auto",            -- Automatically positions it next to active displays
    scale = 1.5,                  -- Applies UI Scaling override

    -- HDR, Bitdepth, and Color Management Options
    bitdepth = 10,
    cm = "hdr",                   -- Color Management enabled
    sdrbrightness = 1.2,          -- Controls SDR luminance curve in HDR mode
    sdrsaturation = 0.98,         -- Fine-tunes SDR saturation levels
})
