local M = {}
local format = require("md-format.format")

-- Visual Mode Commands
function M.setup()
	vim.api.nvim_create_user_command("MDFormatBold", function()
		format.format_visual("bold")
	end, { range = true })

	vim.api.nvim_create_user_command("MDFormatItalic", function()
		format.format_visual("italic")
	end, { range = true })

	vim.api.nvim_create_user_command("MDFormatStrike", function()
		format.format_visual("strike")
	end, { range = true })

	vim.api.nvim_create_user_command("MDFormatBullet", function()
		format.format_visual("bullet")
	end, { range = true })

	vim.api.nvim_create_user_command("MDFormatCode", function()
		format.format_visual("code")
	end, { range = true })

	vim.api.nvim_create_user_command("MDFormatCodeblock", function()
		format.format_visual("code_block")
	end, { range = true })

	vim.api.nvim_create_user_command("MDFormatHl", function()
		format.format_visual("highlight")
	end, { range = true })

	-- Visual Mode Keymaps
	vim.keymap.set("v", "<leader>mb", ":MDFormatBold<CR>", { desc = "Bold Visual" })

	vim.keymap.set("v", "<leader>mi", ":MDFormatItalic<CR>", { desc = "Italic Visual" })

	vim.keymap.set("v", "<leader>ms", ":MDFormatStrike<CR>", { desc = "Strike Visual" })

	vim.keymap.set("v", "<leader>mbu", ":MDFormatBullet<CR>", { desc = "Bullet Visual" })

	vim.keymap.set("v", "<leader>mc", ":MDFormatCode<CR>", { desc = "Code Visual" })

	vim.keymap.set("v", "<leader>mcb", ":MDFormatCodeblock<CR>", { desc = "Code Block Visual" })

	vim.keymap.set("v", "<leader>mh", ":MDFormatHl<CR>", { desc = "Highlight Visual" })

	-- Normal Mode Commands
	vim.api.nvim_create_user_command("MDFormatBoldWord", function()
		format.format_current_word("bold")
	end, {})

	vim.api.nvim_create_user_command("MDFormatItalicWord", function()
		format.format_current_word("italic")
	end, {})

	vim.api.nvim_create_user_command("MDFormatStrikeWord", function()
		format.format_current_word("strike")
	end, {})

	vim.api.nvim_create_user_command("MDFormatCodeWord", function()
		format.format_current_word("code")
	end, {})

	vim.api.nvim_create_user_command("MDFormatBulletWord", function()
		format.format_current_word("bullet")
	end, {})

	vim.api.nvim_create_user_command("MDFormatCodeblockWord", function()
		format.format_current_word("code_block")
	end, {})

	vim.api.nvim_create_user_command("MDFormatHlWord", function()
		format.format_current_word("highlight")
	end, {})

	-- Normal Mode Keymaps
	vim.keymap.set("n", "<leader>mb", ":MDFormatBoldWord<CR>", { desc = "Bold" })

	vim.keymap.set("n", "<leader>mi", ":MDFormatItalicWord<CR>", { desc = "Italic" })

	vim.keymap.set("n", "<leader>ms", ":MDFormatStrikeWord<CR>", { desc = "Strike" })

	vim.keymap.set("n", "<leader>mbu", ":MDFormatBulletWord<CR>", { desc = "Bullet" })

	vim.keymap.set("n", "<leader>mc", ":MDFormatCodeWord<CR>", { desc = "Code" })

	vim.keymap.set("n", "<leader>mcb", ":MDFormatCodeblockWord<CR>", { desc = "Code Block" })

	vim.keymap.set("n", "<leader>mh", ":MDFormatHlWord<CR>", { desc = "Highlight" })
end

return M
