const Object = @import("../types/object.zig").Object;
pub const BufAttachOpts = struct {
    on_bytes: Object,
    on_changedtick: Object,
    on_detach: Object,
    on_lines: Object,
    on_reload: Object,
    preview: Object,
    utf_sizes: Object,
};
