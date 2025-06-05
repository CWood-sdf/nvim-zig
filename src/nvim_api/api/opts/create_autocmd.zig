const tps = @import("../../types.zig");

pub const create_autocmd_opts = struct {
    // is_set__create_autocmd_: OptionalKeys,
    buffer: ?tps.Buffer = null,
    callback: ?tps.Object = null,
    command: ?tps.String = null,
    desc: ?tps.String = null,
    group: ?tps.ZigUnion(.{ tps.Integer, tps.String }) = null,
    nested: ?tps.Boolean = null,
    once: ?tps.Boolean = null,
    pattern: ?tps.ZigUnion(.{ tps.String, tps.ArrayOf(tps.String) }) = null,
};

const mask = struct {
    pub const desc = 1;
    pub const once = 2;
    pub const group = 3;
    pub const buffer = 4;
    pub const nested = 5;
    pub const command = 6;
    pub const pattern = 7;
    pub const callback = 8;
};

pub const create_autocmd_c = tps.COpts(create_autocmd_opts, mask);

pub fn fromZig(from: *const create_autocmd_opts, to: *create_autocmd_c) void {
    tps.zigToC(create_autocmd_opts, create_autocmd_c, mask, from, to);
}
