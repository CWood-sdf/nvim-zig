// IWYU pragma: private, include "nvim/api/deprecated.h"
#define DEFINE_FUNC_ATTRIBUTES
#include "nvim/func_attr.h"
#undef DEFINE_FUNC_ATTRIBUTES
#ifndef DLLEXPORT
#  ifdef MSWIN
#    define DLLEXPORT __declspec(dllexport)
#  else
#    define DLLEXPORT
#  endif
#endif
DLLEXPORT String nvim_exec(uint64_t channel_id, String src, Boolean output, Error *err) FUNC_API_SINCE(7) FUNC_API_DEPRECATED_SINCE(11) FUNC_API_RET_ALLOC;
DLLEXPORT String nvim_command_output(uint64_t channel_id, String command, Error *err) FUNC_API_SINCE(1) FUNC_API_DEPRECATED_SINCE(7) FUNC_API_RET_ALLOC;
DLLEXPORT Object nvim_execute_lua(String code, Array args, Arena *arena, Error *err) FUNC_API_SINCE(3) FUNC_API_DEPRECATED_SINCE(7) FUNC_API_REMOTE_ONLY;
DLLEXPORT Integer nvim_buf_get_number(Buffer buffer, Error *err) FUNC_API_SINCE(1) FUNC_API_DEPRECATED_SINCE(2);
DLLEXPORT void nvim_buf_clear_highlight(Buffer buffer, Integer ns_id, Integer line_start, Integer line_end, Error *err) FUNC_API_SINCE(1) FUNC_API_DEPRECATED_SINCE(7);
DLLEXPORT Integer nvim_buf_add_highlight(Buffer buffer, Integer ns_id, String hl_group, Integer line, Integer col_start, Integer col_end, Error *err) FUNC_API_SINCE(1) FUNC_API_DEPRECATED_SINCE(13);
DLLEXPORT Integer nvim_buf_set_virtual_text(Buffer buffer, Integer src_id, Integer line, Array chunks, Dict(empty) *opts, Error *err) FUNC_API_SINCE(5) FUNC_API_DEPRECATED_SINCE(8);
DLLEXPORT Dict nvim_get_hl_by_id(Integer hl_id, Boolean rgb, Arena *arena, Error *err) FUNC_API_SINCE(3) FUNC_API_DEPRECATED_SINCE(9);
DLLEXPORT Dict nvim_get_hl_by_name(String name, Boolean rgb, Arena *arena, Error *err) FUNC_API_SINCE(3) FUNC_API_DEPRECATED_SINCE(9);
DLLEXPORT void buffer_insert(Buffer buffer, Integer lnum, ArrayOf(String) lines, Arena *arena, Error *err) FUNC_API_DEPRECATED_SINCE(1);
DLLEXPORT String buffer_get_line(Buffer buffer, Integer index, Arena *arena, Error *err) FUNC_API_DEPRECATED_SINCE(1);
DLLEXPORT void buffer_set_line(Buffer buffer, Integer index, String line, Arena *arena, Error *err) FUNC_API_DEPRECATED_SINCE(1);
DLLEXPORT void buffer_del_line(Buffer buffer, Integer index, Arena *arena, Error *err) FUNC_API_DEPRECATED_SINCE(1);
DLLEXPORT ArrayOf(String) buffer_get_line_slice(Buffer buffer, Integer start, Integer end, Boolean include_start, Boolean include_end, Arena *arena, Error *err) FUNC_API_DEPRECATED_SINCE(1);
DLLEXPORT void buffer_set_line_slice(Buffer buffer, Integer start, Integer end, Boolean include_start, Boolean include_end, ArrayOf(String) replacement, Arena *arena, Error *err) FUNC_API_DEPRECATED_SINCE(1);
DLLEXPORT Object buffer_set_var(Buffer buffer, String name, Object value, Arena *arena, Error *err) FUNC_API_DEPRECATED_SINCE(1);
DLLEXPORT Object buffer_del_var(Buffer buffer, String name, Arena *arena, Error *err) FUNC_API_DEPRECATED_SINCE(1);
DLLEXPORT Object window_set_var(Window window, String name, Object value, Arena *arena, Error *err) FUNC_API_DEPRECATED_SINCE(1);
DLLEXPORT Object window_del_var(Window window, String name, Arena *arena, Error *err) FUNC_API_DEPRECATED_SINCE(1);
DLLEXPORT Object tabpage_set_var(Tabpage tabpage, String name, Object value, Arena *arena, Error *err) FUNC_API_DEPRECATED_SINCE(1);
DLLEXPORT Object tabpage_del_var(Tabpage tabpage, String name, Arena *arena, Error *err) FUNC_API_DEPRECATED_SINCE(1);
DLLEXPORT Object vim_set_var(String name, Object value, Arena *arena, Error *err) FUNC_API_DEPRECATED_SINCE(1);
DLLEXPORT Object vim_del_var(String name, Arena *arena, Error *err) FUNC_API_DEPRECATED_SINCE(1);
DLLEXPORT Dict nvim_get_option_info(String name, Arena *arena, Error *err) FUNC_API_SINCE(7) FUNC_API_DEPRECATED_SINCE(11);
DLLEXPORT void nvim_set_option(uint64_t channel_id, String name, Object value, Error *err) FUNC_API_SINCE(1) FUNC_API_DEPRECATED_SINCE(11);
DLLEXPORT Object nvim_get_option(String name, Error *err) FUNC_API_SINCE(1) FUNC_API_DEPRECATED_SINCE(11) FUNC_API_RET_ALLOC;
DLLEXPORT Object nvim_buf_get_option(Buffer buffer, String name, Error *err) FUNC_API_SINCE(1) FUNC_API_DEPRECATED_SINCE(11) FUNC_API_RET_ALLOC;
DLLEXPORT void nvim_buf_set_option(uint64_t channel_id, Buffer buffer, String name, Object value, Error *err) FUNC_API_SINCE(1) FUNC_API_DEPRECATED_SINCE(11);
DLLEXPORT Object nvim_win_get_option(Window window, String name, Error *err) FUNC_API_SINCE(1) FUNC_API_DEPRECATED_SINCE(11) FUNC_API_RET_ALLOC;
DLLEXPORT void nvim_win_set_option(uint64_t channel_id, Window window, String name, Object value, Error *err) FUNC_API_SINCE(1) FUNC_API_DEPRECATED_SINCE(11);
DLLEXPORT Array nvim_call_atomic(uint64_t channel_id, Array calls, Arena *arena, Error *err) FUNC_API_SINCE(1) FUNC_API_DEPRECATED_SINCE(12) FUNC_API_REMOTE_ONLY;
DLLEXPORT void nvim_subscribe(uint64_t channel_id, String event) FUNC_API_SINCE(1) FUNC_API_DEPRECATED_SINCE(13) FUNC_API_REMOTE_ONLY;
DLLEXPORT void nvim_unsubscribe(uint64_t channel_id, String event) FUNC_API_SINCE(1) FUNC_API_DEPRECATED_SINCE(13) FUNC_API_REMOTE_ONLY;
DLLEXPORT void nvim_out_write(String str) FUNC_API_SINCE(1) FUNC_API_DEPRECATED_SINCE(13);
DLLEXPORT void nvim_err_write(String str) FUNC_API_SINCE(1) FUNC_API_DEPRECATED_SINCE(13);
DLLEXPORT void nvim_err_writeln(String str) FUNC_API_SINCE(1) FUNC_API_DEPRECATED_SINCE(13);
DLLEXPORT Object nvim_notify(String msg, Integer log_level, Dict opts, Arena *arena, Error *err) FUNC_API_SINCE(7) FUNC_API_DEPRECATED_SINCE(13);
#include "nvim/func_attr.h"
