const String = @import("../types/object.zig").String;
const BufHandle = @import("../types/buffer.zig").BufHandle;
const WinHandle = @import("../types/window.zig").WinHandle;
const std = @import("std");
pub const OptionOpts = extern struct {
    mask: u64,
    scope: String = std.mem.zeroInit(String, .{}),
    win: WinHandle = 0,
    buf: BufHandle = 0,
    filetype: String = std.mem.zeroInit(String, .{}),
};

pub const mask_buf = 1;
pub const mask_win = 2;
pub const mask_scope = 3;
pub const mask_filetype = 4;
