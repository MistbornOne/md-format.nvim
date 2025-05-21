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

	-- Normal Mode Commands
	vim.api.nvim_create_user_command("MDFormatBoldWord", function()
		format.format_current_word("bold")
	end, {})
end

return M
