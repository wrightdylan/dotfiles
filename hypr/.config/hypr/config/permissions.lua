--------------------------------------------------------------------------------
-- PERMISSIONS & ECOSYSTEM CONFIGURATION
--------------------------------------------------------------------------------

hl.config({
    ecosystem = {
        no_update_news = true,
        no_donation_nag = true,
        -- enforce_permissions = true,
    },
})

--------------------------------------------------------------------------------
-- PER-APPLICATION SECURITY PERMISSIONS (OPTIONAL)
--------------------------------------------------------------------------------

-- Note: Lua uses square brackets or curly braces to group list parameters cleanly

-- hl.permission({ "/usr/(bin|local/bin)/grim", "screencopy", "allow" })
-- hl.permission({ "/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow" })
-- hl.permission({ "/usr/(bin|local/bin)/hyprpm", "plugin", "allow" })
