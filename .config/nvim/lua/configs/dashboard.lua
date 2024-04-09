require("dashboard").setup({
	theme = "hyper",
    shortcut_type = "number",
    change_to_vcs_root = false,
	config = {
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
		shortcut = {
			{ desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
			{
				icon = " ",
				icon_hl = "@variable",
				desc = "Files",
				group = "Label",
				action = "Telescope find_files",
				key = "f",
			},
			{
				icon = " ",
				icon_hl = "@variable",
				desc = "Projects",
				action = "Telescope project",
				key = "p",
			},
			{
				icon = "󱊈 ",
				icon_hl = "@property",
				desc = "Mason",
				action = "Mason",
				key = "m",
			},
		},
		project = { enable = false },
		mru = {
			cwd_only = true,
		},
		footer = {"", "", "🧪 Testing can only prove the presence of bugs, not their absence 🧪"},
	},
})
