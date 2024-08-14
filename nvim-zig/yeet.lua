local ffi = require('ffi')
-- if FILE == nil then
ffi.cdef([[
bool cool();
]])
-- end
FILE = ffi.load("/home/christopher-wood/projects/nvim-zig/nvim-zig/zig-out/lib/libthing.so")

-- local buf = vim.api.nvim_create_buf(true, true)
--
-- local win = vim.api.nvim_open_win(buf, true, {
--     relative = "editor",
--     width = 20,
--     height = 5,
--     row = 5,
--     col = 5,
-- })

local good = FILE.cool()
if not good then
    print("ERRORED")
end
