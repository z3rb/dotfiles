local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Macchiato'
config.cursor_thickness = '2px'
config.default_cursor_style = 'SteadyBar'
config.enable_scroll_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.line_height = 1.2
config.font = wezterm.font('FiraCode Nerd Font Mono', { weight='Regular', stretch='Normal', style='Normal' })
config.macos_window_background_blur = 10
config.underline_position = -4
config.underline_thickness = 2
config.window_background_opacity = 0.9

return config

