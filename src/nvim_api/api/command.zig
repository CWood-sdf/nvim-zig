const tps = @import("../types.zig");

// extern fn nvim_parse_cmd(str: tps.String, opts: ?*tps.Dict(tps.empty), arena: ?*tps.Arena, err: ?*tps.Error) tps.Dict(tps.cmd);

// extern fn nvim_cmd(channel_id: u64, cmd: ?*tps.Dict(tps.cmd), opts: ?*tps.Dict(tps.cmd_opts), arena: ?*tps.Arena, err: ?*tps.Error) tps.String;

// extern fn nvim_create_user_command(channel_id: u64, name: tps.String, command: tps.Object, opts: ?*tps.Dict(tps.user_command), err: ?*tps.Error) void;

extern fn nvim_del_user_command(name: tps.String, err: *tps.Error) void;

// extern fn nvim_buf_create_user_command(channel_id: u64, buffer: tps.Buffer, name: tps.String, command: tps.Object, opts: *tps.Dict(tps.user_command), err: *tps.Error) void;

extern fn nvim_buf_del_user_command(buffer: tps.Buffer, name: tps.String, err: *tps.Error) void;

// extern fn nvim_get_commands(opts: ?*tps.Dict(tps.get_commands), arena: ?*tps.Arena, err: ?*tps.Error) tps.Dict;

// extern fn nvim_buf_get_commands(buffer: tps.Buffer, opts: ?*tps.Dict(tps.get_commands), arena: ?*tps.Arena, err: ?*tps.Error) tps.Dict;
