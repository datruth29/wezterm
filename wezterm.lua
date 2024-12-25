local wezterm = require 'wezterm'
local mux = wezterm.mux
local act = wezterm.action
local config = wezterm.config_builder()

local keys = {}
local mouse_bindins = {}
local launch_menu = {}



if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
    config.default_prog = {'pwsh.exe', '-NoLogo'}
    -- Powershell
    table.insert(launch_menu, {
        label = 'PowerShell',
        args = {'powershell.exe', '-NoLogo'},
    })
    -- Pwsh
    table.insert(launch_menu, {
        label = 'Pwsh',
        args = {'pwsh.exe', '-NoLogo'},
    })
end

config.max_fps = 144
--config.cell_width = 0.9
config.window_background_opacity = 0.9
config.prefer_egl = true
config.color_scheme = 'AdventureTime'
config.default_cursor_style = 'BlinkingBar'
config.font = wezterm.font 'SauceCodePro Nerd Font'
config.font_size = 12

config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = true

config.launch_menu = launch_menu
return config
