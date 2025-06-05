//! By convention, root.zig is the root source file when making a library. If
//! you are making an executable, the convention is to delete this file and
//! start with main.zig instead.
const std = @import("std");
const tps = @import("nvim_api/types.zig");
const consts = @import("nvim_api/constants.zig");
const api = @import("nvim_api/api/autocmd.zig");
const api2 = @import("nvim_api/api/vimscript.zig");
const lua = @import("lua_api/lua.zig");
const luaL = @import("lua_api/luaL.zig");
const testing = std.testing;

export fn luaopen_stuff_zig2(L: *lua.State) c_int {
    var list: std.ArrayListUnmanaged(luaL.Reg) = .empty;
    const alloc = std.heap.smp_allocator;
    const name = alloc.dupeZ(u8, "autocmd") catch return 0;
    const function = luaL.Reg.init(name, luaDoSomething);
    list.append(
        alloc,
        function,
    ) catch return 0;
    list.append(alloc, luaL.Reg.Null) catch return 0;
    luaL.register(L, "zig2", list.items.ptr);
    return 1;
}

export fn sayHello(L: *lua.State) c_int {
    _ = L;
    // std.debug.print("{any}\n", .{L});
    var err: tps.Error = .empty;

    api2.nvim_command(.fromSlice("echo 'urmomgay'"), &err);
    return 0;
}

export fn luaDoSomething(L: *lua.State) c_int {
    lua.push_cclosure(L, sayHello, 0);
    const ref = luaL.ref(L, lua.REGISTRYINDEX);
    doSomething(ref);
    return 0;
}

export fn doSomething(ref: tps.LuaRef) void {
    const opts: api.cao.create_autocmd_opts = .{
        .pattern = .fromStringSlice("SpaceportDone"),
        .callback = .fromLuaRef(ref),
        // .command = .fromSlice("echo 'asdfasdf'"),
    };
    var errmsg: ?[*c]const u8 = null;
    _ = api.z_nvim_create_autocmd(null, .fromStringSlice("User"), opts, null, &errmsg) catch {};
}
pub export fn add(a: i32, b: i32) i32 {
    return a + b;
}

test "basic add functionality" {
    try testing.expect(add(3, 7) == 10);
}
