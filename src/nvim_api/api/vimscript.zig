const tps = @import("../types.zig");

// extern fn nvim_exec2(channel_id: u64, src: tps.String, opts: ?*tps.Dict(tps.exec_opts), err: ?*tps.Error) tps.Dict;

pub extern fn nvim_command(command: tps.String, err: ?*tps.Error) void;

extern fn nvim_eval(expr: tps.String, arena: ?*tps.Arena, err: ?*tps.Error) tps.Object;

extern fn nvim_call_function(fun: tps.String, args: tps.Array, arena: ?*tps.Arena, err: ?*tps.Error) tps.Object;

extern fn nvim_call_dict_function(dict: tps.Object, fun: tps.String, args: tps.Array, arena: ?*tps.Arena, err: ?*tps.Error) tps.Object;

extern fn nvim_parse_expression(expr: tps.String, flags: tps.String, highlight: tps.Boolean, arena: ?*tps.Arena, err: ?*tps.Error) tps.Dict;
