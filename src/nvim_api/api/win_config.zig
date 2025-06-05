const tps = @import("../types.zig");

extern fn nvim_open_win(buffer: tps.Buffer, enter: tps.Boolean, config: ?*tps.Dict(tps.win_config), err: ?*tps.Error) tps.Window;

extern fn nvim_win_set_config(window: tps.Window, config: ?*tps.Dict(tps.win_config), err: ?*tps.Error) void;

extern fn nvim_win_get_config(window: tps.Window, arena: ?*tps.Arena, err: ?*tps.Error) tps.Dict(tps.win_config);
