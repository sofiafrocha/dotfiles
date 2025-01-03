-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.send_composed_key_when_left_alt_is_pressed = true

-- For example, changing the color scheme:
config.color_scheme = 'Catppuccin Macchiato'

config.window_padding = {
  left = 30,
  right = 30,
  top = 20,
  bottom = 20,
}

config.window_decorations = "RESIZE"

config.font_size = 14

-- config.font = wezterm.font "Departure Mono"

-- and finally, return the configuration to wezterm
return config
