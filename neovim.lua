return {
	{
		"bjarneo/aether.nvim",
		name = "aether",
		priority = 1000,
		opts = {
			disable_italics = false,
			colors = {
				-- Monotone shades (base00-base07)
				base00 = "#001919", -- Default background
				base01 = "#205f5f", -- Lighter background (status bars)
				base02 = "#001919", -- Selection background
				base03 = "#205f5f", -- Comments, invisibles
				base04 = "#F3F5F5", -- Dark foreground
				base05 = "#ffffff", -- Default foreground
				base06 = "#ffffff", -- Light foreground
				base07 = "#F3F5F5", -- Light background

				-- Accent colors (base08-base0F)
				base08 = "#e78a8a", -- Variables, errors, red (coral red)
				base09 = "#e8b57f", -- Integers, constants, orange (warm orange)
				base0A = "#d9c27f", -- Classes, types, yellow (muted gold)
				base0B = "#afd5d5", -- Strings, green (seafoam green)
				base0C = "#76c7c7", -- Support, regex, cyan (bright cyan)
				base0D = "#7eb3d4", -- Functions, keywords, blue (sky blue)
				base0E = "#b896d4", -- Keywords, storage, magenta (soft purple)
				base0F = "#c7a58c", -- Deprecated, brown/yellow (muted tan)
			},
		},
		config = function(_, opts)
			require("aether").setup(opts)
			vim.cmd.colorscheme("aether")

			-- Enable hot reload
			require("aether.hotreload").setup()
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aether",
		},
	},
}
