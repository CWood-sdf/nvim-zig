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
    TabPage = 10,
};
pub const OptionalKeys = u64;
pub const Boolean = bool;
pub const Integer = i64;
pub const Float = f64;
pub const LuaRef = c_int;
pub const String = extern struct {
    data: [*]allowzero const u8,
    size: u64,
};

pub fn KVec(T: type) type {
    return extern struct {
        size: u64,
        capacity: u64,
        items: [*]allowzero T,
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
};

pub fn nilObject() Object {
    return Object{ .type = ObjectKind.Nil, .data = .{
        .integer = 0,
    } };
}
