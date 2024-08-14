const types = @import("../types/main.zig");
const BufHandle = @import("../types/buffer.zig").BufHandle;
const Error = @import("../types/main.zig").Error;
const o = @import("../types/object.zig");
const opts = @import("../opts/buf_attach.zig");
pub extern fn nvim_buf_attach(channel_id: u64, buf: BufHandle, send_buffer: bool, opts: *const opts.BufAttachOpts, err: *Error) bool;

pub extern fn nvim_buf_set_lines(channel_id: u64, buf: BufHandle, start: o.Integer, end: o.Integer, strict_indexing: bool, replacement: o.Array, arena: *types.Arena, err: *Error) void;

pub extern fn nvim_create_buf(listed: bool, scratch: bool, err: *Error) BufHandle;
