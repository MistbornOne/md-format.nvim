local core = require("md-format.core")

local M = {}

-- Format in visual mode
function M.format_visual(format_type)
	local start_pos = vim.fn.getpos("'<")
	local end_pos = vim.fn.getpos("'>")

	local lines = vim.api.nvim_buf_get_lines(0, start_pos[2] - 1, end_pos[2], false)
	local text = table.concat(lines, "\n")

	local formatted = core.apply(format_type, text)
	local formatted_lines = vim.split(formatted, "\n", { plain = true })

	vim.api.nvim_buf_set_lines(0, start_pos[2] - 1, end_pos[2], false, formatted_lines)
end

-- Format in normal mode
function M.format_current_word(format_type)
	local word = vim.fn.expand("<cword>")
	if not word or word == "" then
		return
	end

	local formatted = core.apply(format_type, word)

	local row, col = unpack(vim.api.nvim_win_get_cursor(0))
	local line = vim.api.nvim_get_current_line()

	-- Find the word boundaries
	local start_col, end_col = line:find("%f[%w]" .. vim.pesc(word) .. "%f[%W]")
	if not start_col then
		return
	end

	-- Reconstruct the line
	local updated = line:sub(1, start_col - 1) .. formatted .. line:sub(end_col + 1)
	vim.api.nvim_set_current_line(updated)
end

return M
