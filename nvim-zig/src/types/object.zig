pub const ObjectKind = enum(c_int) {
    Nil = 0,
    Boolean,
    Integer,
    Float,
    String,
    Array,
    Dictionary,
    LuaRef,
    Buffer,
    Window,
    TabPage,
};
pub const OptionalKeys = u64;
pub const Boolean = bool;
pub const Integer = i64;
pub const Float = f64;
pub const LuaRef = c_int;
pub const String = extern struct {
    data: [*]const u8,
    size: usize,
};

pub fn KVec(T: type) type {
    return extern struct {
        size: usize,
        capacity: usize,
        items: [*]T,
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
    ty: ObjectKind,
    data: ObjectData,
};

pub fn nilObject() Object {
    return Object{ .ty = ObjectKind.Nil, .data = .{
        .integer = 0,
    } };
}
