const tps = @import("../types.zig");

// Highlight functions
extern fn nvim_get_hl_id_by_name(name: tps.String) tps.Integer;

extern fn nvim_get_hl(ns_id: tps.Integer, opts: ?*tps.Dict(tps.get_highlight), arena: ?*tps.Arena, err: ?*tps.Error) tps.Dict;

extern fn nvim_set_hl(channel_id: u64, ns_id: tps.Integer, name: tps.String, val: ?*tps.Dict(tps.highlight), err: ?*tps.Error) void;

extern fn nvim_get_hl_ns(opts: ?*tps.Dict(tps.get_ns), err: ?*tps.Error) tps.Integer;

extern fn nvim_set_hl_ns(ns_id: tps.Integer, err: ?*tps.Error) void;

extern fn nvim_set_hl_ns_fast(ns_id: tps.Integer, err: ?*tps.Error) void;

// Input functions
extern fn nvim_feedkeys(keys: tps.String, mode: tps.String, escape_ks: tps.Boolean) void;

extern fn nvim_input(channel_id: u64, keys: tps.String) tps.Integer;

extern fn nvim_input_mouse(button: tps.String, action: tps.String, modifier: tps.String, grid: tps.Integer, row: tps.Integer, col: tps.Integer, err: ?*tps.Error) void;

extern fn nvim_replace_termcodes(str: tps.String, from_part: tps.Boolean, do_lt: tps.Boolean, special: tps.Boolean) tps.String;

// Lua execution
extern fn nvim_exec_lua(code: tps.String, args: tps.Array, arena: ?*tps.Arena, err: ?*tps.Error) tps.Object;

// String and path functions
extern fn nvim_strwidth(text: tps.String, err: ?*tps.Error) tps.Integer;

extern fn nvim_list_runtime_paths(arena: ?*tps.Arena, err: ?*tps.Error) tps.ArrayOf(tps.String);

extern fn nvim_get_runtime_file(name: tps.String, all: tps.Boolean, arena: ?*tps.Arena, err: ?*tps.Error) tps.ArrayOf(tps.String);

extern fn nvim_set_current_dir(dir: tps.String, err: ?*tps.Error) void;

// Current line functions
extern fn nvim_get_current_line(arena: ?*tps.Arena, err: ?*tps.Error) tps.String;

extern fn nvim_set_current_line(line: tps.String, arena: ?*tps.Arena, err: ?*tps.Error) void;

extern fn nvim_del_current_line(arena: ?*tps.Arena, err: ?*tps.Error) void;

// Variable functions
extern fn nvim_get_var(name: tps.String, arena: ?*tps.Arena, err: ?*tps.Error) tps.Object;

extern fn nvim_set_var(name: tps.String, value: tps.Object, err: ?*tps.Error) void;

extern fn nvim_del_var(name: tps.String, err: ?*tps.Error) void;

extern fn nvim_get_vvar(name: tps.String, arena: ?*tps.Arena, err: ?*tps.Error) tps.Object;

extern fn nvim_set_vvar(name: tps.String, value: tps.Object, err: ?*tps.Error) void;

// Echo function
extern fn nvim_echo(chunks: tps.Array, history: tps.Boolean, opts: ?*tps.Dict(tps.echo_opts), err: ?*tps.Error) void;

// Buffer functions
extern fn nvim_list_bufs(arena: ?*tps.Arena) tps.ArrayOf(tps.Buffer);

extern fn nvim_get_current_buf() tps.Buffer;

extern fn nvim_set_current_buf(buffer: tps.Buffer, err: ?*tps.Error) void;

// Window functions
extern fn nvim_list_wins(arena: ?*tps.Arena) tps.ArrayOf(tps.Window);

extern fn nvim_get_current_win() tps.Window;

extern fn nvim_set_current_win(window: tps.Window, err: ?*tps.Error) void;

// Buffer creation and terminal functions
extern fn nvim_create_buf(listed: tps.Boolean, scratch: tps.Boolean, err: ?*tps.Error) tps.Buffer;

extern fn nvim_open_term(buffer: tps.Buffer, opts: ?*tps.Dict(tps.open_term), err: ?*tps.Error) tps.Integer;

extern fn nvim_chan_send(chan: tps.Integer, data: tps.String, err: ?*tps.Error) void;

// Tabpage functions
extern fn nvim_list_tabpages(arena: ?*tps.Arena) tps.ArrayOf(tps.Tabpage);

extern fn nvim_get_current_tabpage() tps.Tabpage;

extern fn nvim_set_current_tabpage(tabpage: tps.Tabpage, err: ?*tps.Error) void;

// Paste and put functions
extern fn nvim_paste(channel_id: u64, data: tps.String, crlf: tps.Boolean, phase: tps.Integer, arena: ?*tps.Arena, err: ?*tps.Error) tps.Boolean;

extern fn nvim_put(lines: tps.ArrayOf(tps.String), type: tps.String, after: tps.Boolean, follow: tps.Boolean, arena: ?*tps.Arena, err: ?*tps.Error) void;

// Color functions
extern fn nvim_get_color_by_name(name: tps.String) tps.Integer;

extern fn nvim_get_color_map(arena: ?*tps.Arena) tps.Dict;

// Context functions
extern fn nvim_get_context(opts: ?*tps.Dict(tps.context), arena: ?*tps.Arena, err: ?*tps.Error) tps.Dict;

extern fn nvim_load_context(dict: tps.Dict, err: ?*tps.Error) tps.Object;

// Mode and keymap functions
extern fn nvim_get_mode(arena: ?*tps.Arena) tps.Dict;

extern fn nvim_get_keymap(mode: tps.String, arena: ?*tps.Arena) tps.ArrayOf(tps.Dict);

extern fn nvim_set_keymap(channel_id: u64, mode: tps.String, lhs: tps.String, rhs: tps.String, opts: ?*tps.Dict(tps.keymap), err: ?*tps.Error) void;

extern fn nvim_del_keymap(channel_id: u64, mode: tps.String, lhs: tps.String, err: ?*tps.Error) void;

// API info and client functions
extern fn nvim_get_api_info(channel_id: u64, arena: ?*tps.Arena) tps.Array;

extern fn nvim_set_client_info(channel_id: u64, name: tps.String, version: tps.Dict, type: tps.String, methods: tps.Dict, attributes: tps.Dict, arena: ?*tps.Arena, err: ?*tps.Error) void;

extern fn nvim_get_chan_info(channel_id: u64, chan: tps.Integer, arena: ?*tps.Arena, err: ?*tps.Error) tps.Dict;

extern fn nvim_list_chans(arena: ?*tps.Arena) tps.Array;

extern fn nvim_list_uis(arena: ?*tps.Arena) tps.Array;

// Process functions
extern fn nvim_get_proc_children(pid: tps.Integer, arena: ?*tps.Arena, err: ?*tps.Error) tps.Array;

extern fn nvim_get_proc(pid: tps.Integer, arena: ?*tps.Arena, err: ?*tps.Error) tps.Object;

// Popup menu function
extern fn nvim_select_popupmenu_item(item: tps.Integer, insert: tps.Boolean, finish: tps.Boolean, opts: ?*tps.Dict(tps.empty), err: ?*tps.Error) void;

// Mark functions
extern fn nvim_del_mark(name: tps.String, err: ?*tps.Error) tps.Boolean;

extern fn nvim_get_mark(name: tps.String, opts: ?*tps.Dict(tps.empty), arena: ?*tps.Arena, err: ?*tps.Error) tps.Array;

// Statusline function
extern fn nvim_eval_statusline(str: tps.String, opts: ?*tps.Dict(tps.eval_statusline), arena: ?*tps.Arena, err: ?*tps.Error) tps.Dict;

// Error event function
extern fn nvim_error_event(channel_id: u64, lvl: tps.Integer, data: tps.String) void;
