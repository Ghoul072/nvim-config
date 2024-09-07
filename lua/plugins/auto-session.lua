return {
	"rmagatti/auto-session",
	config = function()
		local auto_session = require("auto-session")
		local keymap = vim.keymap

		auto_session.setup({
			auto_restore = false,
		})

		vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

		keymap.set("n", "<leader>wr", ":SessionRestore<CR>", { desc = "Restore session" })
		keymap.set("n", "<leader>ws", ":SessionSave<CR>", { desc = "Save session" })
	end,
}
