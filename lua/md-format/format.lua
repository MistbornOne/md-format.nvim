local core = require("md-format.core")

local M = {}

function M.format_visual(format_type)
	local start_pos = vim.fn.getpos("'<")
	local end_pos = vim.fn.getpos("'>")

	local lines = vim.api.nvim_buf_get_lines(0, start_pos[2] - 1, end_pos[2], false)
	local text = table.concat(lines, "\n")

	local formatted = core.apply(format_type, text)
	local formatted_lines = vim.split(formatted, "\n", { plain = true })

	vim.api.nvim_buf_set_lines(0, start_pos[2] - 1, end_pos[2], false, formatted_lines)
end

return M
