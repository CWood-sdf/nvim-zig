pub const ErrorType = enum(c_int) {
    None = -1,
    Exception,
    Validation,
};
pub const Error = extern struct {
    type: ErrorType,
    msg: [*]const u8,
};

pub const Arena = extern struct {
    current_block: [*]const u8,
    pos: usize,
    size: usize,
};
