const tps = @import("../types.zig");

extern fn nvim_ui_attach(channel_id: u64, width: tps.Integer, height: tps.Integer, options: tps.Dict, err: ?*tps.Error) void;

extern fn nvim_ui_set_focus(channel_id: u64, gained: tps.Boolean, error: ?*tps.Error) void;

extern fn nvim_ui_detach(channel_id: u64, err: ?*tps.Error) void;

extern fn nvim_ui_try_resize(channel_id: u64, width: tps.Integer, height: tps.Integer, err: ?*tps.Error) void;

extern fn nvim_ui_set_option(channel_id: u64, name: tps.String, value: tps.Object, error: ?*tps.Error) void;

extern fn nvim_ui_try_resize_grid(channel_id: u64, grid: tps.Integer, width: tps.Integer, height: tps.Integer, err: ?*tps.Error) void;

extern fn nvim_ui_pum_set_height(channel_id: u64, height: tps.Integer, err: ?*tps.Error) void;

extern fn nvim_ui_pum_set_bounds(channel_id: u64, width: tps.Float, height: tps.Float, row: tps.Float, col: tps.Float, err: ?*tps.Error) void;

extern fn nvim_ui_term_event(channel_id: u64, event: tps.String, value: tps.Object, err: ?*tps.Error) void;
