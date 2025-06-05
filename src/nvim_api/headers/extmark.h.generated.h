// IWYU pragma: private, include "nvim/api/extmark.h"
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
DLLEXPORT void api_extmark_free_all_mem(void);
DLLEXPORT Integer nvim_create_namespace(String name) FUNC_API_SINCE(5);
DLLEXPORT Dict nvim_get_namespaces(Arena *arena) FUNC_API_SINCE(5);
DLLEXPORT const char *describe_ns(NS ns_id, const char *unknown);
DLLEXPORT bool ns_initialized(uint32_t ns);
DLLEXPORT Array virt_text_to_array(VirtText vt, bool hl_name, Arena *arena);
DLLEXPORT ArrayOf(Integer) nvim_buf_get_extmark_by_id(Buffer buffer, Integer ns_id, Integer id, Dict(get_extmark) *opts, Arena *arena, Error *err) FUNC_API_SINCE(7);
DLLEXPORT Array nvim_buf_get_extmarks(Buffer buffer, Integer ns_id, Object start, Object end, Dict(get_extmarks) *opts, Arena *arena, Error *err) FUNC_API_SINCE(7);
DLLEXPORT Integer nvim_buf_set_extmark(Buffer buffer, Integer ns_id, Integer line, Integer col, Dict(set_extmark) *opts, Error *err) FUNC_API_SINCE(7);
DLLEXPORT Boolean nvim_buf_del_extmark(Buffer buffer, Integer ns_id, Integer id, Error *err) FUNC_API_SINCE(7);
DLLEXPORT void nvim_buf_clear_namespace(Buffer buffer, Integer ns_id, Integer line_start, Integer line_end, Error *err) FUNC_API_SINCE(5);
DLLEXPORT void nvim_set_decoration_provider(Integer ns_id, Dict(set_decoration_provider) *opts, Error *err) FUNC_API_SINCE(7) FUNC_API_LUA_ONLY;
DLLEXPORT VirtText parse_virt_text(Array chunks, Error *err, int *width);
DLLEXPORT String nvim__buf_debug_extmarks(Buffer buffer, Boolean keys, Boolean dot, Error *err) FUNC_API_SINCE(7) FUNC_API_RET_ALLOC;
DLLEXPORT void nvim__ns_set(Integer ns_id, Dict(ns_opts) *opts, Error *err);
DLLEXPORT Dict(ns_opts) nvim__ns_get(Integer ns_id, Arena *arena, Error *err);
#include "nvim/func_attr.h"
