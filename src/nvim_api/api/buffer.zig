const tps = @import("../types.zig");
const lua = @import("../../lua_api/lua.zig");

extern fn nvim_buf_line_count(buffer: tps.Buffer, err: *tps.Error) tps.Integer;

// extern fn nvim_buf_attach(channel_id: u64, buffer: tps.Buffer, send_buffer: tps.Boolean, opts: *tps.Dict(tps.buf_attach), err: ?*tps.Error) tps.Boolean;

extern fn nvim_buf_detach(channel_id: u64, buffer: tps.Buffer, err: *tps.Error) tps.Boolean;

extern fn nvim_buf_get_lines(channel_id: u64, buffer: tps.Buffer, start: tps.Integer, end: tps.Integer, strict_indexing: tps.Boolean, arena: *tps.Arena, lstate: *lua.State, err: *tps.Error) tps.ArrayOf(tps.String);

extern fn nvim_buf_set_lines(channel_id: u64, buffer: tps.Buffer, start: tps.Integer, end: tps.Integer, strict_indexing: tps.Boolean, replacement: tps.ArrayOf(tps.String), arena: *tps.Arena, err: *tps.Error) void;

extern fn nvim_buf_set_text(channel_id: u64, buffer: tps.Buffer, start_row: tps.Integer, start_col: tps.Integer, end_row: tps.Integer, end_col: tps.Integer, replacement: tps.ArrayOf(tps.String), arena: *tps.Arena, err: *tps.Error) void;

// extern fn nvim_buf_get_text(channel_id: u64, buffer: tps.Buffer, start_row: tps.Integer, start_col: tps.Integer, end_row: tps.Integer, end_col: tps.Integer, opts: *tps.Dict(tps.empty), arena: ?*tps.Arena, lstate: ?*lua.State, err: ?*tps.Error) tps.ArrayOf(tps.String);

extern fn nvim_buf_get_offset(buffer: tps.Buffer, index: tps.Integer, err: *tps.Error) tps.Integer;

extern fn nvim_buf_get_var(buffer: tps.Buffer, name: tps.String, arena: *tps.Arena, err: *tps.Error) tps.Object;

extern fn nvim_buf_get_changedtick(buffer: tps.Buffer, err: *tps.Error) tps.Integer;

// extern fn nvim_buf_get_keymap(buffer: tps.Buffer, mode: tps.String, arena: ?*tps.Arena, err: ?*tps.Error) tps.ArrayOf(tps.Dict);

// extern fn nvim_buf_set_keymap(channel_id: u64, buffer: tps.Buffer, mode: tps.String, lhs: tps.String, rhs: tps.String, opts: ?*tps.Dict(tps.keymap), err: ?*tps.Error) void;

extern fn nvim_buf_del_keymap(channel_id: u64, buffer: tps.Buffer, mode: tps.String, lhs: tps.String, err: *tps.Error) void;

extern fn nvim_buf_set_var(buffer: tps.Buffer, name: tps.String, value: tps.Object, err: *tps.Error) void;

extern fn nvim_buf_del_var(buffer: tps.Buffer, name: tps.String, err: *tps.Error) void;

extern fn nvim_buf_get_name(buffer: tps.Buffer, err: *tps.Error) tps.String;

extern fn nvim_buf_set_name(buffer: tps.Buffer, name: tps.String, err: *tps.Error) void;

extern fn nvim_buf_is_loaded(buffer: tps.Buffer) tps.Boolean;

// extern fn nvim_buf_delete(buffer: tps.Buffer, opts: ?*tps.Dict(tps.buf_delete), err: ?*tps.Error) void;

extern fn nvim_buf_is_valid(buffer: tps.Buffer) tps.Boolean;

extern fn nvim_buf_del_mark(buffer: tps.Buffer, name: tps.String, err: *tps.Error) tps.Boolean;

// extern fn nvim_buf_set_mark(buffer: tps.Buffer, name: tps.String, line: tps.Integer, col: tps.Integer, opts: ?*tps.Dict(tps.empty), err: ?*tps.Error) tps.Boolean;

extern fn nvim_buf_get_mark(buffer: tps.Buffer, name: tps.String, arena: *tps.Arena, err: *tps.Error) tps.SizedArrayOf(tps.Integer, 2);

extern fn nvim_buf_call(buffer: tps.Buffer, fun: tps.LuaRef, err: *tps.Error) tps.Object;
