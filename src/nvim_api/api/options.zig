const tps = @import("../types.zig");

// extern fn nvim_get_option_value(name: tps.String, opts: *tps.Dict(tps.option), err: *tps.Error) tps.Object;

extern fn nvim_set_option_value(channel_id: u64, name: tps.String, value: tps.Object, opts: *tps.Dict(tps.option), err: *tps.Error) void;

// extern fn nvim_get_all_options_info(arena: *tps.Arena, err: *tps.Error) tps.Dict;

// extern fn nvim_get_option_info2(name: tps.String, opts: *tps.Dict(tps.option), arena: *tps.Arena, err: *tps.Error) tps.Dict;
