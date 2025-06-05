const tps = @import("../types.zig");

extern fn nvim_win_get_buf(window: tps.Window, err: ?*tps.Error) tps.Buffer;

extern fn nvim_win_set_buf(window: tps.Window, buffer: tps.Buffer, err: ?*tps.Error) void;

extern fn nvim_win_get_cursor(window: tps.Window, arena: ?*tps.Arena, err: ?*tps.Error) tps.ArrayOf(tps.Integer, 2);

extern fn nvim_win_set_cursor(window: tps.Window, pos: tps.ArrayOf(tps.Integer, 2), err: ?*tps.Error) void;

extern fn nvim_win_get_height(window: tps.Window, err: ?*tps.Error) tps.Integer;

extern fn nvim_win_set_height(window: tps.Window, height: tps.Integer, err: ?*tps.Error) void;

extern fn nvim_win_get_width(window: tps.Window, err: ?*tps.Error) tps.Integer;

extern fn nvim_win_set_width(window: tps.Window, width: tps.Integer, err: ?*tps.Error) void;

extern fn nvim_win_get_var(window: tps.Window, name: tps.String, arena: ?*tps.Arena, err: ?*tps.Error) tps.Object;

extern fn nvim_win_set_var(window: tps.Window, name: tps.String, value: tps.Object, err: ?*tps.Error) void;

extern fn nvim_win_del_var(window: tps.Window, name: tps.String, err: ?*tps.Error) void;

extern fn nvim_win_get_position(window: tps.Window, arena: ?*tps.Arena, err: ?*tps.Error) tps.ArrayOf(tps.Integer, 2);

extern fn nvim_win_get_tabpage(window: tps.Window, err: ?*tps.Error) tps.Tabpage;

extern fn nvim_win_get_number(window: tps.Window, err: ?*tps.Error) tps.Integer;

extern fn nvim_win_is_valid(window: tps.Window) tps.Boolean;

extern fn nvim_win_hide(window: tps.Window, err: ?*tps.Error) void;

extern fn nvim_win_close(window: tps.Window, force: tps.Boolean, err: ?*tps.Error) void;

extern fn nvim_win_call(window: tps.Window, fun: tps.LuaRef, err: ?*tps.Error) tps.Object;

extern fn nvim_win_set_hl_ns(window: tps.Window, ns_id: tps.Integer, err: ?*tps.Error) void;

extern fn nvim_win_text_height(window: tps.Window, opts: ?*tps.Dict(tps.win_text_height), arena: ?*tps.Arena, err: ?*tps.Error) tps.Dict;
