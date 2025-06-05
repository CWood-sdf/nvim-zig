const tps = @import("../types.zig");
const consts = @import("../constants.zig");
pub const cao = @import("./opts/create_autocmd.zig");

// extern fn nvim_get_autocmds(opts: ?*tps.Dict(tps.get_autocmds), arena: ?*tps.Arena, err: ?*tps.Error) tps.Array;

pub extern fn nvim_create_autocmd(channel_id: u64, event: tps.Object, opts: *const cao.create_autocmd_c, arena: ?*tps.Arena, err: ?*tps.Error) tps.Integer;

pub fn z_nvim_create_autocmd(channel_id: ?u64, event: tps.Object, opts: cao.create_autocmd_opts, arena: ?*tps.Arena, errmsg: ?*?[*c]const u8) tps.NvimError!tps.Integer {
    var err: tps.Error = .empty;

    var copts: cao.create_autocmd_c = .{};

    cao.fromZig(&opts, &copts);

    const ret = nvim_create_autocmd(channel_id orelse consts.LUA_INTERNAL_CALL, event, &copts, arena, &err);

    if (err.type != .None) {
        if (errmsg) |msg| {
            msg.* = err.msg;
        }

        switch (err.type) {
            .None => {},
            .Exception => return tps.NvimError.Exception,
            .Validation => return tps.NvimError.Validation,
        }
    }
    return ret;
}

extern fn nvim_del_autocmd(id: tps.Integer, err: *tps.Error) void;

// extern fn nvim_clear_autocmds(opts: *tps.Dict(tps.clear_autocmds), arena: *tps.Arena, err: *tps.Error) void;

// extern fn nvim_create_augroup(channel_id: u64, name: tps.String, opts: ?*tps.Dict(tps.create_augroup), err: ?*tps.Error) tps.Integer;

extern fn nvim_del_augroup_by_id(id: tps.Integer, err: *tps.Error) void;

extern fn nvim_del_augroup_by_name(name: tps.String, err: *tps.Error) void;

// extern fn nvim_exec_autocmds(event: tps.Object, opts: ?*tps.Dict(tps.exec_autocmds), arena: ?*tps.Arena, err: ?*tps.Error) void;
