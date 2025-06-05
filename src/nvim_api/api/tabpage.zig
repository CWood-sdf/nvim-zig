const tps = @import("../types.zig");

extern fn nvim_tabpage_list_wins(tabpage: tps.Tabpage, arena: ?*tps.Arena, err: *tps.Error) tps.ArrayOf(tps.Window);

extern fn nvim_tabpage_get_var(tabpage: tps.Tabpage, name: tps.String, arena: ?*tps.Arena, err: *tps.Error) tps.Object;

extern fn nvim_tabpage_set_var(tabpage: tps.Tabpage, name: tps.String, value: tps.Object, err: *tps.Error) void;

extern fn nvim_tabpage_del_var(tabpage: tps.Tabpage, name: tps.String, err: *tps.Error) void;

extern fn nvim_tabpage_get_win(tabpage: tps.Tabpage, err: *tps.Error) tps.Window;

extern fn nvim_tabpage_set_win(tabpage: tps.Tabpage, win: tps.Window, err: *tps.Error) void;

extern fn nvim_tabpage_get_number(tabpage: tps.Tabpage, err: *tps.Error) tps.Integer;

extern fn nvim_tabpage_is_valid(tabpage: tps.Tabpage) tps.Boolean;
