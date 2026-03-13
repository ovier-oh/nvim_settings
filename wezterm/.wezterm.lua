-- Pull in the wezterm API
local wezterm                       = require 'wezterm'

-- This will hold the configuration
local config                        = wezterm.config_builder()

-- Aqui setting
config.font_size                    = 10
config.line_height                  = 1
config.font                         = wezterm.font("Hack Nerd Font")

-- Apareance
config.window_decorations           = "TITLE | RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.color_scheme                 = "GruvboxDark"

config.colors                       = {
    cursor_bg = "#fe8019",
    cursor_border = "#fe8019",
}

config.keys                         = {
    -- Nueva pestaña
    { key = "t",   mods = "CTRL|SHIFT", action = wezterm.action.SpawnTab("CurrentPaneDomain") },

    -- Nueva ventana
    { key = "n",   mods = "CTRL|SHIFT", action = wezterm.action.SpawnWindow },

    -- Cerrar pestaña
    { key = "w",   mods = "CTRL|SHIFT", action = wezterm.action.CloseCurrentTab({ confirm = true }) },

    -- Siguiente pestaña
    { key = "Tab", mods = "CTRL",       action = wezterm.action.ActivateTabRelative(1) },

    -- Pestaña anterior
    { key = "Tab", mods = "CTRL|SHIFT", action = wezterm.action.ActivateTabRelative(-1) },

    -- Split horizontal
    { key = "d",   mods = "CTRL|SHIFT", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },

    -- Split vertical
    { key = "m",   mods = "CTRL|SHIFT", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },
}
return config
