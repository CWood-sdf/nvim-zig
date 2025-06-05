// inline fn lua_getgccount
// inline fn lua_getregistry
// inline fn lua_getglobal
// inline fn lua_setglobal
// inline fn lua_pushliteral
// inline fn lua_islightuserdata
// inline fn lua_strlen
// inline fn lua_pushcfunction
// inline fn lua_register
// inline fn lua_newtable
// inline fn lua_upvalueindex
// inline fn LUA_QL
// extern fn lua_isyieldable
// extern fn lua_tointegerx
// extern fn lua_copy
// extern fn lua_version
// extern fn lua_loadx
// extern fn lua_upvaluejoin
// extern fn lua_upvalueid
// extern fn lua_gethookcount
// extern fn lua_gethookmask
// extern fn lua_gethook
// extern fn lua_sethook
// extern fn lua_setupvalue
// extern fn lua_getupvalue
// extern fn lua_setlocal
// extern fn lua_getlocal
// extern fn lua_getinfo
// extern fn lua_getstack
// extern fn lua_setallocf
// extern fn lua_getallocf
// extern fn lua_next
// extern fn lua_gc
// extern fn lua_status
// extern fn lua_resume
// extern fn lua_yield
// extern fn lua_dump
// extern fn lua_load
// extern fn lua_cpcall
// extern fn lua_setfenv
// extern fn lua_setmetatable
// extern fn lua_getfenv
// extern fn lua_getmetatable
// extern fn lua_newuserdata
// extern fn lua_rawgeti
// extern fn lua_rawget
// extern fn lua_gettable
// extern fn lua_pushthread
// extern fn lua_pushcclosure
// extern fn lua_pushfstring
// extern fn lua_pushvfstring
// extern fn lua_pushstring
// extern fn lua_pushinteger
// extern fn lua_tothread
// extern fn lua_tocfunction
// extern fn lua_objlen
// extern fn lua_tointeger
// extern fn lua_tonumber
// extern fn lua_lessthan
// extern fn lua_rawequal
// extern fn lua_equal
// extern fn lua_xmove
// extern fn lua_checkstack
// extern fn lua_replace
// extern fn lua_insert
// extern fn lua_remove
// extern fn lua_atpanic
// extern fn lua_newthread
// extern fn lua_close
// extern fn lua_newstate
pub const struct___va_list_tag_1 = extern struct {
    gp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    fp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    overflow_arg_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    reg_save_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const ptrdiff_t = c_long;
pub const struct_lua_State = opaque {};
pub const lua_State = struct_lua_State;
pub const lua_CFunction = ?*const fn (?*lua_State) callconv(.c) c_int;
pub const lua_Reader = ?*const fn (?*lua_State, ?*anyopaque, [*c]usize) callconv(.c) [*c]const u8;
pub const lua_Writer = ?*const fn (?*lua_State, ?*const anyopaque, usize, ?*anyopaque) callconv(.c) c_int;
pub const lua_Alloc = ?*const fn (?*anyopaque, ?*anyopaque, usize, usize) callconv(.c) ?*anyopaque;
pub const lua_Number = f64;
pub const lua_Integer = ptrdiff_t;
pub extern fn lua_newstate(f: lua_Alloc, ud: ?*anyopaque) ?*lua_State;
pub extern fn lua_close(L: ?*lua_State) void;
pub extern fn lua_newthread(L: ?*lua_State) ?*lua_State;
pub extern fn lua_atpanic(L: ?*lua_State, panicf: lua_CFunction) lua_CFunction;
pub extern fn lua_gettop(L: ?*lua_State) c_int;
pub extern fn lua_settop(L: ?*lua_State, idx: c_int) void;
pub extern fn lua_pushvalue(L: ?*lua_State, idx: c_int) void;
pub extern fn lua_remove(L: ?*lua_State, idx: c_int) void;
pub extern fn lua_insert(L: ?*lua_State, idx: c_int) void;
pub extern fn lua_replace(L: ?*lua_State, idx: c_int) void;
pub extern fn lua_checkstack(L: ?*lua_State, sz: c_int) c_int;
pub extern fn lua_xmove(from: ?*lua_State, to: ?*lua_State, n: c_int) void;
pub extern fn lua_isnumber(L: ?*lua_State, idx: c_int) c_int;
pub extern fn lua_isstring(L: ?*lua_State, idx: c_int) c_int;
pub extern fn lua_iscfunction(L: ?*lua_State, idx: c_int) c_int;
pub extern fn lua_isuserdata(L: ?*lua_State, idx: c_int) c_int;
pub extern fn lua_type(L: ?*lua_State, idx: c_int) c_int;
pub extern fn lua_typename(L: ?*lua_State, tp: c_int) [*c]const u8;
pub extern fn lua_equal(L: ?*lua_State, idx1: c_int, idx2: c_int) c_int;
pub extern fn lua_rawequal(L: ?*lua_State, idx1: c_int, idx2: c_int) c_int;
pub extern fn lua_lessthan(L: ?*lua_State, idx1: c_int, idx2: c_int) c_int;
pub extern fn lua_tonumber(L: ?*lua_State, idx: c_int) lua_Number;
pub extern fn lua_tointeger(L: ?*lua_State, idx: c_int) lua_Integer;
pub extern fn lua_toboolean(L: ?*lua_State, idx: c_int) c_int;
pub extern fn lua_tolstring(L: ?*lua_State, idx: c_int, len: [*c]usize) [*c]const u8;
pub extern fn lua_objlen(L: ?*lua_State, idx: c_int) usize;
pub extern fn lua_tocfunction(L: ?*lua_State, idx: c_int) lua_CFunction;
pub extern fn lua_touserdata(L: ?*lua_State, idx: c_int) ?*anyopaque;
pub extern fn lua_tothread(L: ?*lua_State, idx: c_int) ?*lua_State;
pub extern fn lua_topointer(L: ?*lua_State, idx: c_int) ?*const anyopaque;
pub extern fn lua_pushnil(L: ?*lua_State) void;
pub extern fn lua_pushnumber(L: ?*lua_State, n: lua_Number) void;
pub extern fn lua_pushinteger(L: ?*lua_State, n: lua_Integer) void;
pub extern fn lua_pushlstring(L: ?*lua_State, s: [*c]const u8, l: usize) void;
pub extern fn lua_pushstring(L: ?*lua_State, s: [*c]const u8) void;
pub extern fn lua_pushvfstring(L: ?*lua_State, fmt: [*c]const u8, argp: [*c]struct___va_list_tag_1) [*c]const u8;
pub extern fn lua_pushfstring(L: ?*lua_State, fmt: [*c]const u8, ...) [*c]const u8;
pub extern fn lua_pushcclosure(L: ?*lua_State, @"fn": lua_CFunction, n: c_int) void;
pub extern fn lua_pushboolean(L: ?*lua_State, b: c_int) void;
pub extern fn lua_pushlightuserdata(L: ?*lua_State, p: ?*anyopaque) void;
pub extern fn lua_pushthread(L: ?*lua_State) c_int;
pub extern fn lua_gettable(L: ?*lua_State, idx: c_int) void;
pub extern fn lua_getfield(L: ?*lua_State, idx: c_int, k: [*c]const u8) void;
pub extern fn lua_rawget(L: ?*lua_State, idx: c_int) void;
pub extern fn lua_rawgeti(L: ?*lua_State, idx: c_int, n: c_int) void;
pub extern fn lua_createtable(L: ?*lua_State, narr: c_int, nrec: c_int) void;
pub extern fn lua_newuserdata(L: ?*lua_State, sz: usize) ?*anyopaque;
pub extern fn lua_getmetatable(L: ?*lua_State, objindex: c_int) c_int;
pub extern fn lua_getfenv(L: ?*lua_State, idx: c_int) void;
pub extern fn lua_settable(L: ?*lua_State, idx: c_int) void;
pub extern fn lua_setfield(L: ?*lua_State, idx: c_int, k: [*c]const u8) void;
pub extern fn lua_rawset(L: ?*lua_State, idx: c_int) void;
pub extern fn lua_rawseti(L: ?*lua_State, idx: c_int, n: c_int) void;
pub extern fn lua_setmetatable(L: ?*lua_State, objindex: c_int) c_int;
pub extern fn lua_setfenv(L: ?*lua_State, idx: c_int) c_int;
pub extern fn lua_call(L: ?*lua_State, nargs: c_int, nresults: c_int) void;
pub extern fn lua_pcall(L: ?*lua_State, nargs: c_int, nresults: c_int, errfunc: c_int) c_int;
pub extern fn lua_cpcall(L: ?*lua_State, func: lua_CFunction, ud: ?*anyopaque) c_int;
pub extern fn lua_load(L: ?*lua_State, reader: lua_Reader, dt: ?*anyopaque, chunkname: [*c]const u8) c_int;
pub extern fn lua_dump(L: ?*lua_State, writer: lua_Writer, data: ?*anyopaque) c_int;
pub extern fn lua_yield(L: ?*lua_State, nresults: c_int) c_int;
pub extern fn lua_resume(L: ?*lua_State, narg: c_int) c_int;
pub extern fn lua_status(L: ?*lua_State) c_int;
pub extern fn lua_gc(L: ?*lua_State, what: c_int, data: c_int) c_int;
pub extern fn lua_error(L: ?*lua_State) c_int;
pub extern fn lua_next(L: ?*lua_State, idx: c_int) c_int;
pub extern fn lua_concat(L: ?*lua_State, n: c_int) void;
pub extern fn lua_getallocf(L: ?*lua_State, ud: [*c]?*anyopaque) lua_Alloc;
pub extern fn lua_setallocf(L: ?*lua_State, f: lua_Alloc, ud: ?*anyopaque) void;
pub extern fn lua_setlevel(from: ?*lua_State, to: ?*lua_State) void;
pub const struct_lua_Debug = extern struct {
    event: c_int = @import("std").mem.zeroes(c_int),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    namewhat: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    what: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    source: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    currentline: c_int = @import("std").mem.zeroes(c_int),
    nups: c_int = @import("std").mem.zeroes(c_int),
    linedefined: c_int = @import("std").mem.zeroes(c_int),
    lastlinedefined: c_int = @import("std").mem.zeroes(c_int),
    short_src: [60]u8 = @import("std").mem.zeroes([60]u8),
    i_ci: c_int = @import("std").mem.zeroes(c_int),
};
pub const lua_Debug = struct_lua_Debug;
pub const lua_Hook = ?*const fn (?*lua_State, [*c]lua_Debug) callconv(.c) void;
pub extern fn lua_getstack(L: ?*lua_State, level: c_int, ar: [*c]lua_Debug) c_int;
pub extern fn lua_getinfo(L: ?*lua_State, what: [*c]const u8, ar: [*c]lua_Debug) c_int;
pub extern fn lua_getlocal(L: ?*lua_State, ar: [*c]const lua_Debug, n: c_int) [*c]const u8;
pub extern fn lua_setlocal(L: ?*lua_State, ar: [*c]const lua_Debug, n: c_int) [*c]const u8;
pub extern fn lua_getupvalue(L: ?*lua_State, funcindex: c_int, n: c_int) [*c]const u8;
pub extern fn lua_setupvalue(L: ?*lua_State, funcindex: c_int, n: c_int) [*c]const u8;
pub extern fn lua_sethook(L: ?*lua_State, func: lua_Hook, mask: c_int, count: c_int) c_int;
pub extern fn lua_gethook(L: ?*lua_State) lua_Hook;
pub extern fn lua_gethookmask(L: ?*lua_State) c_int;
pub extern fn lua_gethookcount(L: ?*lua_State) c_int;
pub extern fn lua_upvalueid(L: ?*lua_State, idx: c_int, n: c_int) ?*anyopaque;
pub extern fn lua_upvaluejoin(L: ?*lua_State, idx1: c_int, n1: c_int, idx2: c_int, n2: c_int) void;
pub extern fn lua_loadx(L: ?*lua_State, reader: lua_Reader, dt: ?*anyopaque, chunkname: [*c]const u8, mode: [*c]const u8) c_int;
pub extern fn lua_version(L: ?*lua_State) [*c]const lua_Number;
pub extern fn lua_copy(L: ?*lua_State, fromidx: c_int, toidx: c_int) void;
pub extern fn lua_tonumberx(L: ?*lua_State, idx: c_int, isnum: [*c]c_int) lua_Number;
pub extern fn lua_tointegerx(L: ?*lua_State, idx: c_int, isnum: [*c]c_int) lua_Integer;
pub extern fn lua_isyieldable(L: ?*lua_State) c_int;
// /usr/lib/zig/include/__stdarg_va_copy.h:11:9
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
// /usr/lib/zig/include/__stddef_offsetof.h:16:9
pub const luaconf_h = "";
pub const LUA_MULTILIB = "lib";
pub const LUA_LMULTILIB = "lib";
pub const LUA_LROOT = "/usr/local";
pub const LUA_LUADIR = "/lua/5.1/";
pub const LUA_JROOT = LUA_LROOT;
pub const LUA_RLPATH = "";
pub const LUA_RCPATH = "";
pub const LUA_LJDIR = LUA_JROOT ++ "/share/luajit-2.1";
pub const LUA_JPATH = ";" ++ LUA_LJDIR ++ "/?.lua";
pub const LUA_LLDIR = LUA_LROOT ++ "/share" ++ LUA_LUADIR;
pub const LUA_LCDIR = LUA_LROOT ++ "/" ++ LUA_LMULTILIB ++ LUA_LUADIR;
pub const LUA_LLPATH = ";" ++ LUA_LLDIR ++ "?.lua;" ++ LUA_LLDIR ++ "?/init.lua";
pub const LUA_LCPATH1 = ";" ++ LUA_LCDIR ++ "?.so";
pub const LUA_LCPATH2 = ";" ++ LUA_LCDIR ++ "loadall.so";
pub const LUA_PATH_DEFAULT = "./?.lua" ++ LUA_JPATH ++ LUA_LLPATH;
pub const LUA_CPATH_DEFAULT = "./?.so" ++ LUA_LCPATH1 ++ LUA_LCPATH2;
pub const LUA_PATH = "LUA_PATH";
pub const LUA_CPATH = "LUA_CPATH";
pub const LUA_INIT = "LUA_INIT";
pub const LUA_DIRSEP = "/";
pub const LUA_PATHSEP = ";";
pub const LUA_PATH_MARK = "?";
pub const LUA_EXECDIR = "!";
pub const LUA_IGMARK = "-";
pub const LUA_PATH_CONFIG = LUA_DIRSEP ++ "\n" ++ LUA_PATHSEP ++ "\n" ++ LUA_PATH_MARK ++ "\n" ++ LUA_EXECDIR ++ "\n" ++ LUA_IGMARK ++ "\n";
pub inline fn LUA_QL(x: anytype) @TypeOf("'" ++ x ++ "'") {
    _ = &x;
    return "'" ++ x ++ "'";
}
pub const LUA_QS = LUA_QL("%s");
pub const LUAI_MAXSTACK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65500, .decimal);
pub const LUAI_MAXCSTACK = @as(c_int, 8000);
pub const LUAI_GCPAUSE = @as(c_int, 200);
pub const LUAI_GCMUL = @as(c_int, 200);
pub const LUA_MAXCAPTURES = @as(c_int, 32);
pub const LUA_INTEGER = ptrdiff_t;
pub const LUA_IDSIZE = @as(c_int, 60);
pub const LUAL_BUFFERSIZE = @compileError("unable to translate macro: undefined identifier `BUFSIZ`");
// ./luaconf.h:111:9
pub const LUA_NUMBER_DOUBLE = "";
pub const LUA_NUMBER = f64;
pub const LUAI_UACNUMBER = f64;
pub const LUA_NUMBER_SCAN = "%lf";
pub const LUA_NUMBER_FMT = "%.14g";
pub const lua_number2str = @compileError("unable to translate macro: undefined identifier `sprintf`");
// ./luaconf.h:121:9
pub const LUAI_MAXNUMBER2STR = @as(c_int, 32);
pub const LUA_INTFRMLEN = "l";
pub const LUA_INTFRM_T = c_long;
pub const LUA_API = @compileError("unable to translate C expr: unexpected token 'extern'");
// ./luaconf.h:134:9
pub const LUALIB_API = LUA_API;
pub const luai_apicheck = @compileError("unable to translate C expr: unexpected token '{'");
// ./luaconf.h:153:9
pub const LUA_VERSION = "Lua 5.1";
pub const LUA_RELEASE = "Lua 5.1.4";
pub const LUA_VERSION_NUM = @as(c_int, 501);
pub const LUA_COPYRIGHT = "Copyright (C) 1994-2008 Lua.org, PUC-Rio";
pub const LUA_AUTHORS = "R. Ierusalimschy, L. H. de Figueiredo & W. Celes";
pub const LUA_SIGNATURE = "\x1bLua";
pub const LUA_MULTRET = -@as(c_int, 1);
pub const LUA_REGISTRYINDEX = -@as(c_int, 10000);
pub const LUA_ENVIRONINDEX = -@as(c_int, 10001);
pub const LUA_GLOBALSINDEX = -@as(c_int, 10002);
pub inline fn lua_upvalueindex(i: anytype) @TypeOf(LUA_GLOBALSINDEX - i) {
    _ = &i;
    return LUA_GLOBALSINDEX - i;
}
pub const LUA_OK = @as(c_int, 0);
pub const LUA_YIELD = @as(c_int, 1);
pub const LUA_ERRRUN = @as(c_int, 2);
pub const LUA_ERRSYNTAX = @as(c_int, 3);
pub const LUA_ERRMEM = @as(c_int, 4);
pub const LUA_ERRERR = @as(c_int, 5);
pub const LUA_TNONE = -@as(c_int, 1);
pub const LUA_TNIL = @as(c_int, 0);
pub const LUA_TBOOLEAN = @as(c_int, 1);
pub const LUA_TLIGHTUSERDATA = @as(c_int, 2);
pub const LUA_TNUMBER = @as(c_int, 3);
pub const LUA_TSTRING = @as(c_int, 4);
pub const LUA_TTABLE = @as(c_int, 5);
pub const LUA_TFUNCTION = @as(c_int, 6);
pub const LUA_TUSERDATA = @as(c_int, 7);
pub const LUA_TTHREAD = @as(c_int, 8);
pub const LUA_MINSTACK = @as(c_int, 20);
pub const LUA_GCSTOP = @as(c_int, 0);
pub const LUA_GCRESTART = @as(c_int, 1);
pub const LUA_GCCOLLECT = @as(c_int, 2);
pub const LUA_GCCOUNT = @as(c_int, 3);
pub const LUA_GCCOUNTB = @as(c_int, 4);
pub const LUA_GCSTEP = @as(c_int, 5);
pub const LUA_GCSETPAUSE = @as(c_int, 6);
pub const LUA_GCSETSTEPMUL = @as(c_int, 7);
pub const LUA_GCISRUNNING = @as(c_int, 9);
pub inline fn lua_pop(L: anytype, n: anytype) @TypeOf(lua_settop(L, -n - @as(c_int, 1))) {
    _ = &L;
    _ = &n;
    return lua_settop(L, -n - @as(c_int, 1));
}
pub inline fn lua_newtable(L: anytype) @TypeOf(lua_createtable(L, @as(c_int, 0), @as(c_int, 0))) {
    _ = &L;
    return lua_createtable(L, @as(c_int, 0), @as(c_int, 0));
}
pub inline fn lua_register(L: anytype, n: anytype, f: anytype) @TypeOf(lua_setglobal(L, n)) {
    _ = &L;
    _ = &n;
    _ = &f;
    return blk_1: {
        _ = lua_pushcfunction(L, f);
        break :blk_1 lua_setglobal(L, n);
    };
}
pub inline fn lua_pushcfunction(L: anytype, f: anytype) @TypeOf(lua_pushcclosure(L, f, @as(c_int, 0))) {
    _ = &L;
    _ = &f;
    return lua_pushcclosure(L, f, @as(c_int, 0));
}
pub inline fn lua_strlen(L: anytype, i: anytype) @TypeOf(lua_objlen(L, i)) {
    _ = &L;
    _ = &i;
    return lua_objlen(L, i);
}
pub inline fn lua_isfunction(L: anytype, n: anytype) @TypeOf(lua_type(L, n) == LUA_TFUNCTION) {
    _ = &L;
    _ = &n;
    return lua_type(L, n) == LUA_TFUNCTION;
}
pub inline fn lua_istable(L: anytype, n: anytype) @TypeOf(lua_type(L, n) == LUA_TTABLE) {
    _ = &L;
    _ = &n;
    return lua_type(L, n) == LUA_TTABLE;
}
pub inline fn lua_islightuserdata(L: anytype, n: anytype) @TypeOf(lua_type(L, n) == LUA_TLIGHTUSERDATA) {
    _ = &L;
    _ = &n;
    return lua_type(L, n) == LUA_TLIGHTUSERDATA;
}
pub inline fn lua_isnil(L: anytype, n: anytype) @TypeOf(lua_type(L, n) == LUA_TNIL) {
    _ = &L;
    _ = &n;
    return lua_type(L, n) == LUA_TNIL;
}
pub inline fn lua_isboolean(L: anytype, n: anytype) @TypeOf(lua_type(L, n) == LUA_TBOOLEAN) {
    _ = &L;
    _ = &n;
    return lua_type(L, n) == LUA_TBOOLEAN;
}
pub inline fn lua_isthread(L: anytype, n: anytype) @TypeOf(lua_type(L, n) == LUA_TTHREAD) {
    _ = &L;
    _ = &n;
    return lua_type(L, n) == LUA_TTHREAD;
}
pub inline fn lua_isnone(L: anytype, n: anytype) @TypeOf(lua_type(L, n) == LUA_TNONE) {
    _ = &L;
    _ = &n;
    return lua_type(L, n) == LUA_TNONE;
}
pub inline fn lua_isnoneornil(L: anytype, n: anytype) @TypeOf(lua_type(L, n) <= @as(c_int, 0)) {
    _ = &L;
    _ = &n;
    return lua_type(L, n) <= @as(c_int, 0);
}
pub inline fn lua_pushliteral(L: anytype, s: anytype) @TypeOf(lua_pushlstring(L, "" ++ s, @import("std").zig.c_translation.MacroArithmetic.div(@import("std").zig.c_translation.sizeof(s), @import("std").zig.c_translation.sizeof(u8)) - @as(c_int, 1))) {
    _ = &L;
    _ = &s;
    return lua_pushlstring(L, "" ++ s, @import("std").zig.c_translation.MacroArithmetic.div(@import("std").zig.c_translation.sizeof(s), @import("std").zig.c_translation.sizeof(u8)) - @as(c_int, 1));
}
pub inline fn lua_setglobal(L: anytype, s: anytype) @TypeOf(lua_setfield(L, LUA_GLOBALSINDEX, s)) {
    _ = &L;
    _ = &s;
    return lua_setfield(L, LUA_GLOBALSINDEX, s);
}
pub inline fn lua_getglobal(L: anytype, s: anytype) @TypeOf(lua_getfield(L, LUA_GLOBALSINDEX, s)) {
    _ = &L;
    _ = &s;
    return lua_getfield(L, LUA_GLOBALSINDEX, s);
}
pub inline fn lua_tostring(L: anytype, i: anytype) @TypeOf(lua_tolstring(L, i, NULL)) {
    _ = &L;
    _ = &i;
    return lua_tolstring(L, i, NULL);
}
pub const lua_open = @compileError("unable to translate macro: undefined identifier `luaL_newstate`");
// lua.h:260:9
pub inline fn lua_getregistry(L: anytype) @TypeOf(lua_pushvalue(L, LUA_REGISTRYINDEX)) {
    _ = &L;
    return lua_pushvalue(L, LUA_REGISTRYINDEX);
}
pub inline fn lua_getgccount(L: anytype) @TypeOf(lua_gc(L, LUA_GCCOUNT, @as(c_int, 0))) {
    _ = &L;
    return lua_gc(L, LUA_GCCOUNT, @as(c_int, 0));
}
pub const lua_Chunkreader = lua_Reader;
pub const lua_Chunkwriter = lua_Writer;
pub const LUA_HOOKCALL = @as(c_int, 0);
pub const LUA_HOOKRET = @as(c_int, 1);
pub const LUA_HOOKLINE = @as(c_int, 2);
pub const LUA_HOOKCOUNT = @as(c_int, 3);
pub const LUA_HOOKTAILRET = @as(c_int, 4);
pub const LUA_MASKCALL = @as(c_int, 1) << LUA_HOOKCALL;
pub const LUA_MASKRET = @as(c_int, 1) << LUA_HOOKRET;
pub const LUA_MASKLINE = @as(c_int, 1) << LUA_HOOKLINE;
pub const LUA_MASKCOUNT = @as(c_int, 1) << LUA_HOOKCOUNT;
