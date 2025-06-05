// IWYU pragma: private, include "nvim/api/ui.h"
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
DLLEXPORT void remote_ui_disconnect(uint64_t channel_id);
DLLEXPORT void remote_ui_wait_for_attach(bool only_stdio);
DLLEXPORT void nvim_ui_attach(uint64_t channel_id, Integer width, Integer height, Dict options, Error *err) FUNC_API_SINCE(1) FUNC_API_REMOTE_ONLY;
DLLEXPORT void ui_attach(uint64_t channel_id, Integer width, Integer height, Boolean enable_rgb, Error *err) FUNC_API_DEPRECATED_SINCE(1);
DLLEXPORT void nvim_ui_set_focus(uint64_t channel_id, Boolean gained, Error *error) FUNC_API_SINCE(11) FUNC_API_REMOTE_ONLY;
DLLEXPORT void nvim_ui_detach(uint64_t channel_id, Error *err) FUNC_API_SINCE(1) FUNC_API_REMOTE_ONLY;
DLLEXPORT void remote_ui_stop(RemoteUI *ui);
DLLEXPORT void nvim_ui_try_resize(uint64_t channel_id, Integer width, Integer height, Error *err) FUNC_API_SINCE(1) FUNC_API_REMOTE_ONLY;
DLLEXPORT void nvim_ui_set_option(uint64_t channel_id, String name, Object value, Error *error) FUNC_API_SINCE(1) FUNC_API_REMOTE_ONLY;
DLLEXPORT void nvim_ui_try_resize_grid(uint64_t channel_id, Integer grid, Integer width, Integer height, Error *err) FUNC_API_SINCE(6) FUNC_API_REMOTE_ONLY;
DLLEXPORT void nvim_ui_pum_set_height(uint64_t channel_id, Integer height, Error *err) FUNC_API_SINCE(6) FUNC_API_REMOTE_ONLY;
DLLEXPORT void nvim_ui_pum_set_bounds(uint64_t channel_id, Float width, Float height, Float row, Float col, Error *err) FUNC_API_SINCE(7) FUNC_API_REMOTE_ONLY;
DLLEXPORT void nvim_ui_term_event(uint64_t channel_id, String event, Object value, Error *err) FUNC_API_SINCE(12) FUNC_API_REMOTE_ONLY;
DLLEXPORT void remote_ui_grid_clear(RemoteUI *ui, Integer grid);
DLLEXPORT void remote_ui_grid_resize(RemoteUI *ui, Integer grid, Integer width, Integer height);
DLLEXPORT void remote_ui_grid_scroll(RemoteUI *ui, Integer grid, Integer top, Integer bot, Integer left, Integer right, Integer rows, Integer cols);
DLLEXPORT void remote_ui_default_colors_set(RemoteUI *ui, Integer rgb_fg, Integer rgb_bg, Integer rgb_sp, Integer cterm_fg, Integer cterm_bg);
DLLEXPORT void remote_ui_hl_attr_define(RemoteUI *ui, Integer id, HlAttrs rgb_attrs, HlAttrs cterm_attrs, Array info);
DLLEXPORT void remote_ui_highlight_set(RemoteUI *ui, int id);
DLLEXPORT void remote_ui_grid_cursor_goto(RemoteUI *ui, Integer grid, Integer row, Integer col);
DLLEXPORT void remote_ui_cursor_goto(RemoteUI *ui, Integer row, Integer col);
DLLEXPORT void remote_ui_put(RemoteUI *ui, const char *cell);
DLLEXPORT void remote_ui_raw_line(RemoteUI *ui, Integer grid, Integer row, Integer startcol, Integer endcol, Integer clearcol, Integer clearattr, LineFlags flags, const schar_T *chunk, const sattr_T *attrs);
DLLEXPORT void remote_ui_flush(RemoteUI *ui);
DLLEXPORT void remote_ui_event(RemoteUI *ui, char *name, Array args);
#include "nvim/func_attr.h"
