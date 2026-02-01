local M = {}

function M.smart_buf_close()
	local listed = vim.fn.getbufinfo({ buflisted = 1 })
	local cur = vim.api.nvim_get_current_buf()

	if #listed > 1 then
		-- There are other buffers → switch to previous and delete current
		vim.cmd("bp") -- switch to previous buffer
		vim.cmd("bd " .. cur) -- delete the buffer we were on
	else
		-- Only one buffer → create a new empty buffer, then delete current
		vim.cmd("enew") -- create new empty buffer
		vim.cmd("bd " .. cur) -- delete the old buffer
	end
end

return M
