const std = @import("std");
pub const handle_T = c_int;
pub const Buffer = enum(handle_T) { _ };
pub const Window = enum(handle_T) { _ };
pub const Tabpage = enum(handle_T) { _ };

// zig side
// const create_autocmd_opts = struct {
//  buffer: ?Buffer = null,
//  callback: ?Object = null,
//  command: ?String = null,
//  desc: ?String = null,
//  group: ?ZigUnion(.{ Integer, String }) = null,
//  nexted: ?Boolean = null,
//  once: ?Boolean = null,
//  pattern: ?ZigUnion(.{ String, ArrayOf(String) }) = null,
// }

pub fn OptsFor(T: type, Keyset: ?type) type {
    _ = Keyset;
    return T;
}

pub const ObjectKind = enum(c_int) {
    Nil = 0,
    Boolean = 1,
    Integer = 2,
    Float = 3,
    String = 4,
    Array = 5,
    Dictionary = 6,
    LuaRef = 7,
    Buffer = 8,
    Window = 9,
    Tabpage = 10,
};
pub const linenr_T = i32;
pub const OptionalKeys = u64;
pub const Boolean = bool;
pub const Integer = i64;
pub const Float = f64;
pub const LuaRef = c_int;
pub const String = extern struct {
    data: [*]allowzero const u8,
    size: u64,
    pub fn fromSlice(slice: []const u8) String {
        return .{
            .data = slice.ptr,
            .size = slice.len,
        };
    }
};

pub fn KVec(T: type) type {
    return extern struct {
        size: u64,
        capacity: u64,
        items: [*]allowzero const T,

        const Self = @This();

        pub fn toSlice(self: *Self) []const T {
            return .{
                .ptr = self.items,
                .len = self.size,
            };
        }
        pub fn fromSlice(slice: []const T) Self {
            return .{
                .size = slice.len,
                .capacity = slice.len,
                .items = slice.ptr,
            };
        }
    };
}
pub const KeyValuePair = extern struct {
    key: String,
    value: Object,
};

pub const Array = KVec(Object);
pub const Dictionary = KVec(KeyValuePair);
pub const ObjectData = extern union {
    boolean: Boolean,
    integer: Integer,
    float: Float,
    string: String,
    array: Array,
    dictionary: Dictionary,
    luaref: LuaRef,
};
pub const Object = extern struct {
    type: ObjectKind,
    data: ObjectData,

    pub fn fromLuaRef(val: LuaRef) Object {
        return .{ .type = .LuaRef, .data = .{ .luaref = val } };
    }
    pub fn fromInt(val: Integer) Object {
        return Object{ .type = .Integer, .data = .{ .integer = val } };
    }
    pub fn fromFloat(val: Float) Object {
        return Object{ .type = .Float, .data = .{ .float = val } };
    }

    pub fn fromBool(val: Boolean) Object {
        return Object{ .type = .Boolean, .data = .{ .boolean = val } };
    }

    pub fn fromStringSlice(val: []const u8) Object {
        const str: String = .fromSlice(val);
        return Object{
            .data = .{ .string = str },
            .type = .String,
        };
    }
};

pub fn CTypeFor(T: type) type {
    const info = @typeInfo(T);
    switch (info) {
        .optional => |t| return CTypeFor(t.child),
        else => {},
    }

    return switch (T) {
        Buffer,
        Object,
        String,
        Boolean,
        LuaRef,
        Window,
        Tabpage,
        => {
            return T;
        },
        else => {
            @compileError(std.fmt.comptimePrint("Unknown zig->c type {}", .{T}));
        },
    };
}

pub fn zigToC(
    ZigTp: type,
    CTp: type,
    Masks: type,
    zigStruct: *const ZigTp,
    cStruct: *CTp,
) void {
    const fields = std.meta.fields(ZigTp);
    inline for (fields) |field| {
        if (@field(zigStruct.*, field.name)) |value| {
            const ZigField = @TypeOf(value);
            const CField = @FieldType(CTp, field.name);
            if (ZigField == CField) {
                @field(cStruct.*, field.name) = value;
            } else {
                @field(cStruct.*, field.name) = value.toC();
            }
            cStruct.__mask = cStruct.__mask | (1 << @field(Masks, field.name));
        }
    }
}

/// Returns the c options for a given struct
pub fn COpts(
    T: type,
    // comptime fieldNames: []std.meta.FieldEnum(T),
    Masks: type,
) type {
    const fields = std.meta.fields(T);

    comptime {
        // std.debug.assert(fieldNames.len == masks.len);
        std.debug.assert(fields.len == std.meta.declarations(Masks).len);
    }

    var cFields: [fields.len + 1]std.builtin.Type.StructField = undefined;

    const defaultMask: OptionalKeys = 0;
    cFields[0] = .{
        .default_value_ptr = &defaultMask,
        .name = "__mask",
        .is_comptime = false,
        .type = OptionalKeys,
        .alignment = @alignOf(OptionalKeys),
    };
    for (fields) |f| {
        const index = (std.meta.fieldIndex(T, f.name) orelse @compileError("No field index?")) + 1;
        const Tp = CTypeFor(f.type);
        const defaultValue = std.mem.zeroes(Tp);
        cFields[index] = .{
            .default_value_ptr = &defaultValue,
            .name = f.name,
            .is_comptime = false,
            .type = Tp,
            .alignment = @alignOf(Tp),
        };
    }

    // const Converter = struct {
    //     pub fn fromZig(self: *anyopaque, zigStruct: *const T) void {
    //         const Self = @TypeOf(self.*);
    //         zigToC(T, Self, Masks, zigStruct, self);
    //     }
    // };

    const structInfo: std.builtin.Type.Struct = .{
        .is_tuple = false,
        .layout = .@"extern",
        .fields = &cFields,
        .decls = &[0]std.builtin.Type.Declaration{},
        // .backing_integer =

    };

    return @Type(.{
        .@"struct" = structInfo,
    });
}
pub fn ZigUnion(T: anytype) type {
    _ = T;
    // TODO: Create an actual value off this?
    return Object;
}

pub fn Union(T: anytype) type {
    _ = T;
    return Object;
}
pub fn SizedArrayOf(T: type, comptime len: u32) type {
    // TODO: Add type info?
    _ = T;
    _ = len;
    return Array;
}

pub fn ArrayOf(T: type) type {
    // TODO: Add type info?
    _ = T;
    return Array;
}

pub fn nilObject() Object {
    return Object{ .type = ObjectKind.Nil, .data = .{
        .integer = 0,
    } };
}
pub const ErrorType = enum(c_int) {
    None = -1,
    Exception,
    Validation,
};
pub const Error = extern struct {
    type: ErrorType,
    msg: ?[*]const u8,
    pub const empty: Error = .{
        .type = .None,
        .msg = null,
    };
};

pub const NvimError = error{ Exception, Validation };

pub const Arena = extern struct {
    current_block: [*]allowzero const u8,
    pos: usize,
    size: usize,
    pub const empty: Arena = .{
        .current_block = @ptrFromInt(0),
        .pos = 0,
        .size = 0,
    };
};
// pub fn Union(_: anytype) type {
//     return Object;
// }
