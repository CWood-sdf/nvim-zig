// IWYU pragma: private, include "nvim/api/options.h"
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
DLLEXPORT Object nvim_get_option_value(String name, Dict(option) *opts, Error *err) FUNC_API_SINCE(9) FUNC_API_RET_ALLOC;
DLLEXPORT void nvim_set_option_value(uint64_t channel_id, String name, Object value, Dict(option) *opts, Error *err) FUNC_API_SINCE(9);
DLLEXPORT Dict nvim_get_all_options_info(Arena *arena, Error *err) FUNC_API_SINCE(7);
DLLEXPORT Dict nvim_get_option_info2(String name, Dict(option) *opts, Arena *arena, Error *err) FUNC_API_SINCE(11);
#include "nvim/func_attr.h"
