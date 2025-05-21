local M = {}

local formatters = {
	bold = function(text)
		return "**" .. text .. "**"
	end,
	italic = function(text)
		return "*" .. text .. "*"
	end,
	strike = function(text)
		return "~~" .. text .. "~~"
	end,
	highlight = function(text)
		return "==" .. text .. "=="
	end,
	bullet = function(text)
		return "* " .. text
	end,
	code = function(text)
		return "`" .. text .. "`"
	end,
	code_block = function(text)
		return "```" .. text .. "```"
	end,
}

function M.apply(format_type, text)
	local formatter = formatters[format_type]
	return formatter and formatter(text) or text
end

return M
