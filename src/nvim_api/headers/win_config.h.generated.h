// IWYU pragma: private, include "nvim/api/win_config.h"
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
DLLEXPORT Window nvim_open_win(Buffer buffer, Boolean enter, Dict(win_config) *config, Error *err) FUNC_API_SINCE(6) FUNC_API_TEXTLOCK_ALLOW_CMDWIN;
DLLEXPORT void nvim_win_set_config(Window window, Dict(win_config) *config, Error *err) FUNC_API_SINCE(6);
DLLEXPORT Dict(win_config) nvim_win_get_config(Window window, Arena *arena, Error *err) FUNC_API_SINCE(6);
#include "nvim/func_attr.h"
