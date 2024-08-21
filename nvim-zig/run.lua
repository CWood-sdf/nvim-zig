local ffi = require('ffi')
-- if FILE == nil then
ffi.cdef([[
bool cool();
void cool2();
]])
-- end
if FILE2 == nil then
    FILE2 = ffi.load("/home/christopher-wood/projects/nvim-zig/nvim-zig/a.so")
end
if FILE == nil then
    FILE = ffi.load("/home/christopher-wood/projects/nvim-zig/nvim-zig/zig-out/lib/libthing.so")
end

vim.defer_fn(function()
    local good = FILE.cool()
    if not good then
        print("ERRORED")
    end
    FILE2.cool2()
end, 1000)

-- vim.api.nvim_set_option_value("signcolumn", "no", {
--     win = 1002
-- })
