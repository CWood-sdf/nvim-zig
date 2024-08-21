const BufHandle = @import("../types/buffer.zig").BufHandle;
const WinHandle = @import("../types/window.zig").WinHandle;
const o = @import("../types/object.zig");
const WindowOpts = @import("../opts/open_win.zig").WindowOpts;
const Error = @import("../types/main.zig").Error;
const OptionOpts = @import("../opts/option.zig").OptionOpts;

pub extern fn nvim_open_win(buffer: BufHandle, enter: o.Boolean, config: *const WindowOpts, err: *Error) WinHandle;

pub extern fn nvim_set_option_value(channel_id: u64, name: o.String, value: o.Object, opts: *const OptionOpts, err: *Error) callconv(.C) void;
pub extern fn nvim_set_option_value2(channel_id: u64, name: o.String, value: o.Object, opts: *const OptionOpts, err: *Error) callconv(.C) void;
