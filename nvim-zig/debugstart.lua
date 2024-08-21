local ffi = require('ffi')
-- if FILE == nil then
ffi.cdef([[
bool cool();
void cool2();
]])
-- end
FILE2 = ffi.load("/home/christopher-wood/projects/nvim-zig/nvim-zig/a.so")
FILE = ffi.load("/home/christopher-wood/projects/nvim-zig/nvim-zig/zig-out/lib/libthing.so")

vim.keymap.set('n', 'rr', function()
    local good = FILE.cool()
    if not good then
        print("ERRORED")
    end
    FILE2.cool2()
end, {})
