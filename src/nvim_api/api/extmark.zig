const tps = @import("../types.zig");

extern fn nvim_create_namespace(name: tps.String) tps.Integer;

// extern fn nvim_get_namespaces(arena: *tps.Arena) tps.Dict;

// extern fn nvim_buf_get_extmark_by_id(buffer: tps.Buffer, ns_id: tps.Integer, id: tps.Integer, opts: *tps.Dict(tps.get_extmark), arena: *tps.Arena, err: *tps.Error) tps.ArrayOf(tps.Integer);

// extern fn nvim_buf_get_extmarks(buffer: tps.Buffer, ns_id: tps.Integer, start: tps.Object, end: tps.Object, opts: *tps.Dict(tps.get_extmarks), arena: *tps.Arena, err: *tps.Error) tps.Array;

// extern fn nvim_buf_set_extmark(buffer: tps.Buffer, ns_id: tps.Integer, line: tps.Integer, col: tps.Integer, opts: *tps.Dict(tps.set_extmark), err: *tps.Error) tps.Integer;

extern fn nvim_buf_del_extmark(buffer: tps.Buffer, ns_id: tps.Integer, id: tps.Integer, err: *tps.Error) tps.Boolean;

extern fn nvim_buf_clear_namespace(buffer: tps.Buffer, ns_id: tps.Integer, line_start: tps.Integer, line_end: tps.Integer, err: *tps.Error) void;

// extern fn nvim_set_decoration_provider(ns_id: tps.Integer, opts: ?*tps.Dict(tps.set_decoration_provider), err: ?*tps.Error) void;
