local M = {}

function M.ToggleExport()
	local word = vim.fn.expand("<cword>")
	local first_char = string.sub(word, 1, 1)

	if string.match(first_char, "[A-Z]") ~= nil then
		first_char = string.lower(first_char)
	else
		first_char = string.upper(first_char)
	end

	vim.lsp.buf.rename(first_char .. string.sub(word, 2))
end

function M.setup() end

return M
