// const lua = @import("lua_api/lua.zig");
// const log = @import("log.zig");
// const std = @import("std");
// pub const FnInfo = struct {
//     name: []const u8,
//     f: lua.CFunction,
//     params: @FieldType(std.builtin.Type.Fn, "params"),
//     ret: type,
// };
//
// pub fn luaTemplate(L: *lua.State, TempAlloc: type, function: anytype, comptime name: []const u8) c_int {
//     log.write("Calling function {s}\n", .{name}) catch {};
//     const fInfo = @typeInfo(@TypeOf(function)).@"fn";
//     comptime var luaParams = 0;
//     comptime var i = 0;
//     comptime var tupleFields: [fInfo.params.len]type = undefined;
//
//     inline for (fInfo.params) |param| {
//         const ParamTp = param.type.?;
//         const paramInfo = @typeInfo(ParamTp);
//     }
// }
// pub fn genDecls(scope: type, comptime prefix: []const u8, TempAlloc: type) []const FnInfo {
//     const scopeInfo = @typeInfo(scope).@"struct";
//
//     const methods = scopeInfo.decls;
//
//     var ret: [methods.len]FnInfo = undefined;
//     comptime var i = 0;
//     inline for (methods) |method| {
//         if (method.name.len > prefix.len and comptime std.mem.eql(u8, method.name[0..prefix.len], prefix)) {
//             const fnInfo = @typeInfo(@TypeOf(@field(scope, method.name))).@"fn";
//             const retType = fnInfo.return_type.?;
//             const fnRetInfo = @typeInfo(retType);
//             const mainReturn = switch (fnRetInfo) {
//                 .error_union => |v| v.payload,
//                 else => fnInfo.return_type.?,
//             };
//             const newThing = struct {
//                 pub fn actualFn(L: *lua.State) callconv(.C) c_int {
//                     // std.debug.print("{s}\n", .{method.name});
//                     const r = luaTemplate(
//                         L,
//                         TempAlloc,
//                         @field(scope, method.name),
//                         method.name,
//                     );
//                     return r;
//                 }
//             };
//             ret[i] = .{
//                 .f = newThing.actualFn,
//                 .name = method.name,
//                 .ret = mainReturn,
//                 .params = fnInfo.params,
//             };
//             i += 1;
//         }
//     }
//     return ret[0..i];
// }
