-- Pull in wezterm's Lua API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- my coolnight colorscheme
config.colors = {
	foreground = "#CBE0F0",
	background = "#011423",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}
config.color_scheme = "tokyonight"
config.font = wezterm.font("Hack Nerd Font")
config.font_size = 12
local images_path = "/Users/alejandrogarcia/.config/wezterm/images/"
local images = {}
local command = "ls -pa " .. images_path .. " | grep -v /"
for dir in io.popen(command):lines() do
	table.insert(images, dir)
end
if #images > 0 then
	config.window_background_image = images_path .. images[math.random(1, #images)]
end
-- if math.random(0, 1) == 0 then
-- 	config.window_background_image = "/Users/alejandrogarcia/.config/dandadan.jpg"
-- else
-- 	config.window_background_image = "/Users/alejandrogarcia/.config/frieren-terminal.jpg"
-- end

-- config.window_background_image = "/Users/alejandrogarcia/.config/frieren-terminal.jpg"
config.enable_tab_bar = false

--config.window_decorations = "RESIZE"
config.window_background_opacity = 0.7
config.macos_window_background_blur = 10

-- and finally, return the configuration to wezterm
return config
