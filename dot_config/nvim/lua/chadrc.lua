---@type ChadrcConfig
local M = {}

M.base46 = {

	theme = "tokyonight",

	hl_override = {
		NvDashAscii = { fg = "#f7768e" },
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},

	transparency = false,
}

M.ui = {
	cmp = {
		icons_left = true,
		style = "flat_dark",
		format_colors = {
			tailwind = true,
		},
	},

	telescope = { style = "bordered" },

	statusline = {
		theme = "vscode_colored",
	},

	tabufline = {
		order = { "treeOffset", "buffers", "tabs" },
	},
}

M.nvdash = {
	load_on_startup = true,
	header = {
		"",
		" ███▓██   ▄▄▄       ██▓ ██▀███   ▄▄▄      ▓█████▄  █    ██ ▒██   ██▒",
		"▓██░  ██▒▒████▄    ▓██▒▓██ ▒ ██▒▒████▄    ▒██▀ ██▌ ██  ▓██▒▒▒ █ █ ▒░",
		"▓██░ ██▓▒▒██  ▀█▄  ▒██▒▓██ ░▄█ ▒▒██  ▀█▄  ░██   █▌▓██  ▒██░░░  █   ░",
		"▒██▄█▓▒ ▒░██▄▄▄▄██ ░██░▒██▀▀█▄  ░██▄▄▄▄██ ░▓█▄   ▌▓▓█  ░██░ ░ █ █ ▒ ",
		"▒██▒ ░  ░ ▓█   ▓██▒░██░░██▓ ▒██▒ ▓█   ▓██▒░▒████▓ ▒▒█████▓ ▒██▒ ▒██▒",
		"▒▓▒░ ░  ░ ▒▒   ▓▒█░░▓  ░ ▒▓ ░▒▓░ ▒▒   ▓▒█░ ▒▒▓  ▒ ░▒▓▒ ▒ ▒ ▒▒ ░ ░▓ ░",
		"░▒ ░       ▒   ▒▒ ░ ▒ ░  ░▒ ░ ▒░  ▒   ▒▒ ░ ░ ▒  ▒ ░░▒░ ░ ░ ░░   ░▒ ░",
		"░░         ░   ▒    ▒ ░  ░░   ░   ░   ▒    ░ ░  ░  ░░░ ░ ░  ░    ░  ",
		"               ░  ░ ░     ░           ░  ░   ░       ░      ░    ░  ",
		"                                           ░                        ",
		"",
	},

	buttons = {
		{ txt = "  Find File", keys = "Spc f f", cmd = "Telescope find_files" },
		{ txt = "  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
		{ txt = "󰈭  Find Word", keys = "Spc f w", cmd = "Telescope live_grep" },
		{ txt = "  Projects", keys = "Spc f p", cmd = "Telescope project" },
		{ txt = "  Todo", keys = "Spc f t", cmd = "Telescope todo-comments" },


		{ txt = "─", hl = "NvDashLazy", no_gap = true, rep = true },

		{
			txt = function()
				local stats = require("lazy").stats()
				local ms = math.floor(stats.startuptime) .. " ms"
				return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
			end,
			hl = "NvDashLazy",
			no_gap = true,
		},

		{ txt = "─", hl = "NvDashLazy", no_gap = true, rep = true },
	},
}

M.term = {
    sizes = { sp = 0.4, vsp = 0.3, ["bo sp"] = 0.4, ["bo vsp"] = 0.3 },
	float = {
		relative = "editor",
		row = 0.1,
		col = 0.15,
		width = 0.7,
		height = 0.7,
		border = "single",
	},
}

M.lsp = { signature = false }

M.mason = {
	pkgs = {
		"lua-language-server",
		"stylua",
		"rust-analyzer",
		"css-lsp",
		"html-lsp",
		"svelte-language-server",
		"tailwindcss-language-server",
		"typescript-language-server",
		"python-lsp-server",
		"bash-language-server",
		"marksman",
		"pyright",
		"ruff",
		"clangd",
		"clang-format",
	},
}

return M
