local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("FiraCode Nerd Font")
config.color_scheme = "Dark+"

config.font_size = 12
config.window_decorations = "RESIZE"
config.enable_tab_bar = true
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true

config.keys = {
  {
    key = "d",
    mods = "CMD",
    action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
  },
  {
    key = "r",
    mods = "CMD",
    action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
  },
  {
    key = "x",
    mods = "CMD",
    action = wezterm.action.TogglePaneZoomState,
  },
  { key = "h", mods = "CMD", action = wezterm.action({ ActivatePaneDirection = "Left" }) }, -- Focus left pane
  { key = "l", mods = "CMD", action = wezterm.action({ ActivatePaneDirection = "Right" }) }, -- Focus right pane
  { key = "k", mods = "CMD", action = wezterm.action({ ActivatePaneDirection = "Up" }) },   -- Focus pane above
  { key = "j", mods = "CMD", action = wezterm.action({ ActivatePaneDirection = "Down" }) }, -- Focus pane below
}

return config
