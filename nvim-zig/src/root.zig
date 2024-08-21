const bufApi = @import("api/buffer.zig");
const winApi = @import("api/window.zig");
const BufHandle = @import("types/buffer.zig").BufHandle;
const w = @import("opts/open_win.zig");
const consts = @import("constants.zig");
const types = @import("types/object.zig");
const mainTp = @import("types/main.zig");
const std = @import("std");
const opt = @import("opts/option.zig");
const asdf = @cImport({
    @cInclude("asdf.h");
});

export fn cool() callconv(.C) bool {
    // if (@sizeOf(types.Object) != 32) {
    //     @compileLog(std.fmt.comptimePrint("{}", .{@sizeOf(types.Object)}));
    //     // @compileError("expected 24");
    // }
    // if (@sizeOf(types.String) != 16) {
    //     @compileLog(std.fmt.comptimePrint("{}", .{@sizeOf(types.String)}));
    //     // @compileError("expected 16");
    // }
    // if (@sizeOf(opt.OptionOpts) != 48) {
    //     // @compileLog(std.fmt.comptimePrint("{} {}", .{ @sizeOf(types.Object), 0x120 }));
    //     @compileError("expected 30");
    // }
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const alloc = gpa.allocator();
    defer _ = gpa.deinit();
    const log = std.fs.openFileAbsolute("/home/christopher-wood/projects/nvim-zig/error.txt", .{
        .mode = .write_only,
    }) catch return false;
    defer log.close();

    const Arr = std.ArrayList(types.Object);

    const str3: []const u8 = "asdfkasdfasdfasdfasdfalkjfkljlkasdfaksdjf lKjadk sdf  " ++ .{0};
    var err = mainTp.Error{
        .type = mainTp.ErrorType.None,
        .msg = str3.ptr,
    };

    const buf = bufApi.nvim_create_buf(true, true, &err);

    const rel: []const u8 = "editor";
    const relStr = types.String{
        .size = rel.len,
        .data = rel.ptr,
    };

    const mask = (1 << w.mask_win_config_col) | (1 << w.mask_win_config_row) | (1 << w.mask_win_config_relative) | (1 << w.mask_win_config_width) | (1 << w.mask_win_config_height);

    const winOpts = w.WindowOpts{ .mask = mask, .col = 10, .relative = relStr, .row = 10, .width = 40, .height = 10 };

    var writer = log.writer();
    // {
    //     writer.print("win title enum: {}\n", .{@intFromEnum(winOpts..ty)}) catch return false;
    // }

    {
        writer.print("err before win: {}\n", .{@intFromEnum(err.type)}) catch return false;
    }
    const win = winApi.nvim_open_win(buf, true, &winOpts, &err);

    // winApi.nvim_set_option_value(consts.LUA_INTERNAL_CALL, name, value, &opts, &err);
    // winApi.nvim_set_option_value(consts.LUA_INTERNAL_CALL, name, value, &opts, &err);
    {
        writer.print("win ret: {}\n", .{win}) catch return false;
    }
    // {
    //     const asdf = std.ArrayList(u8);
    //     var asd: asdf = asdf.init(alloc);
    //     defer asd.deinit();
    //     var i: u32 = 0;
    //     writer.print("err ptr: {}\n", .{@intFromPtr(err.msg)}) catch return false;
    //     while (i < 5 and err.msg[i] != 0) : (i += 1) {
    //         asd.append(err.msg[i]) catch return false;
    //     }
    //     writer.print("err msg: {s}\n", .{asd.items}) catch return false;
    // }
    {
        writer.print("err after: {}\n", .{@intFromEnum(err.type)}) catch return false;
    }
    // {
    //     const emsg: [*:0]const u8 = @ptrCast(err.msg);
    //     writer.print("{s}\n", .{emsg}) catch return false;
    // }

    var arr: Arr = Arr.init(alloc);
    defer arr.deinit();
    {
        const str: []const u8 = "asdsdf";
        const Str = types.String{
            .size = str.len,
            .data = str.ptr,
        };
        arr.append(types.Object{ .type = types.ObjectKind.String, .data = types.ObjectData{
            .string = Str,
        } }) catch return false;
    }
    {
        const str: []const u8 = "Hello from ZIG!!!";
        const Str = types.String{
            .size = str.len,
            .data = str.ptr,
        };
        arr.append(types.Object{ .type = types.ObjectKind.String, .data = types.ObjectData{
            .string = Str,
        } }) catch return false;
    }
    // {
    //     const str: []const u8 = "ooga booga";
    //     const Str = types.String{
    //         .size = str.len,
    //         .data = str.ptr,
    //     };
    //     arr.append(types.Object{ .ty = types.ObjectKind.String, .data = types.ObjectData{
    //         .string = Str,
    //     } }) catch return false;
    // }

    const actualArr = types.Array{
        .size = arr.items.len,
        .capacity = arr.items.len,
        .items = arr.items.ptr,
    };

    const str2: []const u8 = "";
    var arena = mainTp.Arena{
        .size = 0,
        .pos = 0,
        .current_block = str2.ptr,
    };

    const optMask = (1 << opt.mask_win);

    // const scopeName: []const u8 = "local";
    //
    // const scope = types.String{
    //     .data = scopeName.ptr,
    //     .size = scopeName.len - 1,
    // };
    var opts = asdf.struct_OptionOpts{
        .mask = optMask,
        .win = win,
        // .scope = scope,
    };

    // in c: mask: 4, win: 1002

    const optionName: []const u8 = "signcolumn";

    const name = asdf.struct_String{
        .data = optionName.ptr,
        .size = optionName.len,
    };
    // in c: data: 'signcolumn', size: 10

    const valueName: []const u8 = "yes:8";
    const valueT = asdf.struct_String{
        .data = valueName.ptr,
        .size = valueName.len,
    };
    // in c: data: 'no', size: 2

    const value = asdf.struct_Object{
        .kind = asdf.String,
        .data = .{ .string = valueT },
    };
    // in c: kind: 4
    //
    // const namePtr: [*]const u8 = @ptrCast(&name);
    // for (0..@sizeOf(@TypeOf(name))) |i| {
    //     writer.print("name+{}: {b:8}\n", .{ i, namePtr[i] }) catch return false;
    // }
    // const valuePtr: [*]const u8 = @ptrCast(&value);
    // for (0..@sizeOf(@TypeOf(value))) |i| {
    //     writer.print("value+{}: {b:8}\n", .{ i, valuePtr[i] }) catch return false;
    // }
    const errPtr: [*]const u8 = @ptrCast(&err);
    for (0..@sizeOf(@TypeOf(err))) |i| {
        writer.print("err+{}: {b:8}\n", .{ i, errPtr[i] }) catch return false;
    }

    var err2 = mainTp.Error{
        .type = @enumFromInt(-1),
        .msg = str3.ptr,
    };
    const castedName: *const types.String = @ptrCast(&name);
    const castedValue: *const types.Object = @ptrCast(&value);
    winApi.nvim_set_option_value(0, castedName.*, castedValue.*, @ptrCast(&opts), @ptrCast(&err2));
    // asdf.nvim_set_option_value(0, name, value, &opts, &err2);
    const dp: *const u8 = @ptrCast(name.data);
    writer.print("d1: {?}\n", .{dp.*}) catch return false;
    writer.print("opts: {?}\n", .{opts}) catch return false;
    writer.print("opts.name: {s}\n", .{optionName}) catch return false;
    writer.print("win: {?}\n", .{win}) catch return false;
    writer.print("name: {?}\n", .{name}) catch return false;
    writer.print("name.data: {s}\n", .{valueName}) catch return false;
    writer.print("value: {?}\n", .{value}) catch return false;
    writer.print("value.data: {?}\n", .{value.data}) catch return false;
    {
        writer.print("err after: {}\n", .{@intFromEnum(err.type)}) catch return false;
    }
    writer.print("reached end", .{}) catch return false;
    bufApi.nvim_buf_set_lines(consts.LUA_INTERNAL_CALL, buf, 0, -1, true, actualArr, &arena, &err);
    return true;
}
