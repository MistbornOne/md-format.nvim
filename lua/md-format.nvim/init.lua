local M = {}
local cmd = require("md-format.commands")

function M.setup()
	vim.api.nvim_create_user_command("MDFormatBold", function()
		cmd.format_visual("bold")
	end, { range = true })

	vim.api.nvim_create_user_command("MDFormatItalic", function()
		cmd.format_visual("italic")
	end, { range = true })

	vim.api.nvim_create_user_command("MDFormatStrike", function()
		cmd.format_visual("strike")
	end, { range = true })

	vim.api.nvim_create_user_command("MDFormatBullet", function()
		cmd.format_visual("bullet")
	end, { range = true })

	vim.api.nvim_create_user_command("MDFormatCode", function()
		cmd.format_visual("code")
	end, { range = true })

	vim.api.nvim_create_user_command("MDFormatCodeblock", function()
		cmd.format_visual("code_block")
	end, { range = true })

	vim.api.nvim_create_user_command("MDFormatHl", function()
		cmd.format_visual("highlight")
	end, { range = true })
end

return M
