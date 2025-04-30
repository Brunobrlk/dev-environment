local cmp = lvim.builtin.cmp

cmp.cmdline.enable = true
cmp.cmdline.options = {
	{
		type = ":",
		sources = {
			{ name = "cmdline" },
			{ name = "path" },
		},
	},
	{
		type = { "/", "?" },
		sources = {
			{ name = "buffer" },
		},
	}
}
