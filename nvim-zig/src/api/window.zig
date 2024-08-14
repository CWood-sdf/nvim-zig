const BufHandle = @import("../types/buffer.zig").BufHandle;
const WinHandle = @import("../types/window.zig").WinHandle;
const Boolean = @import("../types/object.zig").Boolean;
const WindowOpts = @import("../opts/open_win.zig").WindowOpts;
const Error = @import("../types/main.zig").Error;

pub extern fn nvim_open_win(buffer: BufHandle, enter: Boolean, config: *const WindowOpts, err: *Error) WinHandle;
