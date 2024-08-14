const o = @import("../types/object.zig");
const w = @import("../types/window.zig");
pub const WindowOpts = extern struct {
    mask: u64,
    row: o.Float = 5,
    col: o.Float = 5,
    width: o.Integer = 5,
    height: o.Integer = 5,
    anchor: o.String,
    relative: o.String,
    split: o.String,
    win: w.WinHandle = 0,
    bufpos: o.Array,
    external: o.Boolean = false,
    focusable: o.Boolean = true,
    vertical: o.Boolean = false,
    zindex: o.Integer = 0,
    border: o.Object = o.nilObject(),
    title: o.Object = o.nilObject(),
    title_pos: o.String,
    footer: o.Object = o.nilObject(),
    footer_pos: o.String,
    style: o.String,
    noautocmd: o.Boolean = false,
    fixed: o.Boolean = false,
    hide: o.Boolean = false,
};

pub const mask_win_config_col = 1;
pub const mask_win_config_row = 2;
pub const mask_win_config_win = 3;
pub const mask_win_config_hide = 4;
pub const mask_win_config_width = 5;
pub const mask_win_config_split = 6;
pub const mask_win_config_title = 7;
pub const mask_win_config_fixed = 8;
pub const mask_win_config_style = 9;
pub const mask_win_config_anchor = 10;
pub const mask_win_config_bufpos = 11;
pub const mask_win_config_height = 12;
pub const mask_win_config_zindex = 13;
pub const mask_win_config_footer = 14;
pub const mask_win_config_border = 15;
pub const mask_win_config_external = 16;
pub const mask_win_config_relative = 17;
pub const mask_win_config_vertical = 18;
pub const mask_win_config_focusable = 19;
pub const mask_win_config_noautocmd = 20;
pub const mask_win_config_title_pos = 21;
pub const mask_win_config_footer_pos = 22;
pub const mask_win_text_height_end_row = 1;
pub const mask_win_text_height_end_vcol = 2;
pub const mask_win_text_height_start_row = 3;
pub const mask_win_text_height_start_vcol = 4;
