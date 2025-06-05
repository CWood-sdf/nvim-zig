pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __suseconds64_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
pub const int_least8_t = __int_least8_t;
pub const int_least16_t = __int_least16_t;
pub const int_least32_t = __int_least32_t;
pub const int_least64_t = __int_least64_t;
pub const uint_least8_t = __uint_least8_t;
pub const uint_least16_t = __uint_least16_t;
pub const uint_least32_t = __uint_least32_t;
pub const uint_least64_t = __uint_least64_t;
pub const int_fast8_t = i8;
pub const int_fast16_t = c_long;
pub const int_fast32_t = c_long;
pub const int_fast64_t = c_long;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = c_ulong;
pub const uint_fast32_t = c_ulong;
pub const uint_fast64_t = c_ulong;
pub const intmax_t = __intmax_t;
pub const uintmax_t = __uintmax_t;
pub const wchar_t = c_int;
// /usr/include/bits/floatn.h:83:24: warning: unsupported type: 'Complex'
pub const __cfloat128 = @compileError("unable to resolve typedef child type");
// /usr/include/bits/floatn.h:83:24
pub const _Float128 = f128;
pub const _Float32 = f32;
pub const _Float64 = f64;
pub const _Float32x = f64;
pub const _Float64x = c_longdouble;
pub const div_t = extern struct {
    quot: c_int = @import("std").mem.zeroes(c_int),
    rem: c_int = @import("std").mem.zeroes(c_int),
};
pub const ldiv_t = extern struct {
    quot: c_long = @import("std").mem.zeroes(c_long),
    rem: c_long = @import("std").mem.zeroes(c_long),
};
pub const lldiv_t = extern struct {
    quot: c_longlong = @import("std").mem.zeroes(c_longlong),
    rem: c_longlong = @import("std").mem.zeroes(c_longlong),
};
pub extern fn __ctype_get_mb_cur_max() usize;
pub extern fn atof(__nptr: [*c]const u8) f64;
pub extern fn atoi(__nptr: [*c]const u8) c_int;
pub extern fn atol(__nptr: [*c]const u8) c_long;
pub extern fn atoll(__nptr: [*c]const u8) c_longlong;
pub extern fn strtod(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f64;
pub extern fn strtof(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f32;
pub extern fn strtold(__nptr: [*c]const u8, __endptr: [*c][*c]u8) c_longdouble;
pub extern fn strtol(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_long;
pub extern fn strtoul(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulong;
pub extern fn strtoq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtouq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn strtoll(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtoull(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn l64a(__n: c_long) [*c]u8;
pub extern fn a64l(__s: [*c]const u8) c_long;
pub const u_char = __u_char;
pub const u_short = __u_short;
pub const u_int = __u_int;
pub const u_long = __u_long;
pub const quad_t = __quad_t;
pub const u_quad_t = __u_quad_t;
pub const fsid_t = __fsid_t;
pub const loff_t = __loff_t;
pub const ino_t = __ino_t;
pub const dev_t = __dev_t;
pub const gid_t = __gid_t;
pub const mode_t = __mode_t;
pub const nlink_t = __nlink_t;
pub const uid_t = __uid_t;
pub const off_t = __off_t;
pub const pid_t = __pid_t;
pub const id_t = __id_t;
pub const daddr_t = __daddr_t;
pub const caddr_t = __caddr_t;
pub const key_t = __key_t;
pub const clock_t = __clock_t;
pub const clockid_t = __clockid_t;
pub const time_t = __time_t;
pub const timer_t = __timer_t;
pub const ulong = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_int8_t = __uint8_t;
pub const u_int16_t = __uint16_t;
pub const u_int32_t = __uint32_t;
pub const u_int64_t = __uint64_t;
pub const register_t = c_long;
pub fn __bswap_16(arg___bsx: __uint16_t) callconv(.c) __uint16_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint16_t, @bitCast(@as(c_short, @truncate(((@as(c_int, @bitCast(@as(c_uint, __bsx))) >> @intCast(8)) & @as(c_int, 255)) | ((@as(c_int, @bitCast(@as(c_uint, __bsx))) & @as(c_int, 255)) << @intCast(8))))));
}
pub fn __bswap_32(arg___bsx: __uint32_t) callconv(.c) __uint32_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return ((((__bsx & @as(c_uint, 4278190080)) >> @intCast(24)) | ((__bsx & @as(c_uint, 16711680)) >> @intCast(8))) | ((__bsx & @as(c_uint, 65280)) << @intCast(8))) | ((__bsx & @as(c_uint, 255)) << @intCast(24));
}
pub fn __bswap_64(arg___bsx: __uint64_t) callconv(.c) __uint64_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint64_t, @bitCast(@as(c_ulong, @truncate(((((((((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 18374686479671623680)) >> @intCast(56)) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 71776119061217280)) >> @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 280375465082880)) >> @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 1095216660480)) >> @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 4278190080)) << @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 16711680)) << @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 65280)) << @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 255)) << @intCast(56))))));
}
pub fn __uint16_identity(arg___x: __uint16_t) callconv(.c) __uint16_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint32_identity(arg___x: __uint32_t) callconv(.c) __uint32_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint64_identity(arg___x: __uint64_t) callconv(.c) __uint64_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub const __sigset_t = extern struct {
    __val: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
pub const sigset_t = __sigset_t;
pub const struct_timeval = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_usec: __suseconds_t = @import("std").mem.zeroes(__suseconds_t),
};
pub const struct_timespec = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_nsec: __syscall_slong_t = @import("std").mem.zeroes(__syscall_slong_t),
};
pub const suseconds_t = __suseconds_t;
pub const __fd_mask = c_long;
pub const fd_set = extern struct {
    __fds_bits: [16]__fd_mask = @import("std").mem.zeroes([16]__fd_mask),
};
pub const fd_mask = __fd_mask;
pub extern fn select(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]struct_timeval) c_int;
pub extern fn pselect(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]const struct_timespec, noalias __sigmask: [*c]const __sigset_t) c_int;
pub const blksize_t = __blksize_t;
pub const blkcnt_t = __blkcnt_t;
pub const fsblkcnt_t = __fsblkcnt_t;
pub const fsfilcnt_t = __fsfilcnt_t;
const struct_unnamed_1 = extern struct {
    __low: c_uint = @import("std").mem.zeroes(c_uint),
    __high: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const __atomic_wide_counter = extern union {
    __value64: c_ulonglong,
    __value32: struct_unnamed_1,
};
pub const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
    __next: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
};
pub const __pthread_list_t = struct___pthread_internal_list;
pub const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist = @import("std").mem.zeroes([*c]struct___pthread_internal_slist),
};
pub const __pthread_slist_t = struct___pthread_internal_slist;
pub const struct___pthread_mutex_s = extern struct {
    __lock: c_int = @import("std").mem.zeroes(c_int),
    __count: c_uint = @import("std").mem.zeroes(c_uint),
    __owner: c_int = @import("std").mem.zeroes(c_int),
    __nusers: c_uint = @import("std").mem.zeroes(c_uint),
    __kind: c_int = @import("std").mem.zeroes(c_int),
    __spins: c_short = @import("std").mem.zeroes(c_short),
    __elision: c_short = @import("std").mem.zeroes(c_short),
    __list: __pthread_list_t = @import("std").mem.zeroes(__pthread_list_t),
};
pub const struct___pthread_rwlock_arch_t = extern struct {
    __readers: c_uint = @import("std").mem.zeroes(c_uint),
    __writers: c_uint = @import("std").mem.zeroes(c_uint),
    __wrphase_futex: c_uint = @import("std").mem.zeroes(c_uint),
    __writers_futex: c_uint = @import("std").mem.zeroes(c_uint),
    __pad3: c_uint = @import("std").mem.zeroes(c_uint),
    __pad4: c_uint = @import("std").mem.zeroes(c_uint),
    __cur_writer: c_int = @import("std").mem.zeroes(c_int),
    __shared: c_int = @import("std").mem.zeroes(c_int),
    __rwelision: i8 = @import("std").mem.zeroes(i8),
    __pad1: [7]u8 = @import("std").mem.zeroes([7]u8),
    __pad2: c_ulong = @import("std").mem.zeroes(c_ulong),
    __flags: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const struct___pthread_cond_s = extern struct {
    __wseq: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g1_start: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g_size: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g1_orig_size: c_uint = @import("std").mem.zeroes(c_uint),
    __wrefs: c_uint = @import("std").mem.zeroes(c_uint),
    __g_signals: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __unused_initialized_1: c_uint = @import("std").mem.zeroes(c_uint),
    __unused_initialized_2: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const __tss_t = c_uint;
pub const __thrd_t = c_ulong;
pub const __once_flag = extern struct {
    __data: c_int = @import("std").mem.zeroes(c_int),
};
pub const pthread_t = c_ulong;
pub const pthread_mutexattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_condattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_key_t = c_uint;
pub const pthread_once_t = c_int;
pub const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_attr_t = union_pthread_attr_t;
pub const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [40]u8,
    __align: c_long,
};
pub const pthread_cond_t = extern union {
    __data: struct___pthread_cond_s,
    __size: [48]u8,
    __align: c_longlong,
};
pub const pthread_rwlock_t = extern union {
    __data: struct___pthread_rwlock_arch_t,
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
pub const pthread_spinlock_t = c_int;
pub const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
pub const pthread_barrierattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub extern fn random() c_long;
pub extern fn srandom(__seed: c_uint) void;
pub extern fn initstate(__seed: c_uint, __statebuf: [*c]u8, __statelen: usize) [*c]u8;
pub extern fn setstate(__statebuf: [*c]u8) [*c]u8;
pub const struct_random_data = extern struct {
    fptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    rptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    state: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    rand_type: c_int = @import("std").mem.zeroes(c_int),
    rand_deg: c_int = @import("std").mem.zeroes(c_int),
    rand_sep: c_int = @import("std").mem.zeroes(c_int),
    end_ptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
};
pub extern fn random_r(noalias __buf: [*c]struct_random_data, noalias __result: [*c]i32) c_int;
pub extern fn srandom_r(__seed: c_uint, __buf: [*c]struct_random_data) c_int;
pub extern fn initstate_r(__seed: c_uint, noalias __statebuf: [*c]u8, __statelen: usize, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn setstate_r(noalias __statebuf: [*c]u8, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn rand() c_int;
pub extern fn srand(__seed: c_uint) void;
pub extern fn rand_r(__seed: [*c]c_uint) c_int;
pub extern fn drand48() f64;
pub extern fn erand48(__xsubi: [*c]c_ushort) f64;
pub extern fn lrand48() c_long;
pub extern fn nrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn mrand48() c_long;
pub extern fn jrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn srand48(__seedval: c_long) void;
pub extern fn seed48(__seed16v: [*c]c_ushort) [*c]c_ushort;
pub extern fn lcong48(__param: [*c]c_ushort) void;
pub const struct_drand48_data = extern struct {
    __x: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    __old_x: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    __c: c_ushort = @import("std").mem.zeroes(c_ushort),
    __init: c_ushort = @import("std").mem.zeroes(c_ushort),
    __a: c_ulonglong = @import("std").mem.zeroes(c_ulonglong),
};
pub extern fn drand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn erand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn lrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn nrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn mrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn jrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn srand48_r(__seedval: c_long, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn seed48_r(__seed16v: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn lcong48_r(__param: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn arc4random() __uint32_t;
pub extern fn arc4random_buf(__buf: ?*anyopaque, __size: usize) void;
pub extern fn arc4random_uniform(__upper_bound: __uint32_t) __uint32_t;
pub extern fn malloc(__size: c_ulong) ?*anyopaque;
pub extern fn calloc(__nmemb: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn realloc(__ptr: ?*anyopaque, __size: c_ulong) ?*anyopaque;
pub extern fn free(__ptr: ?*anyopaque) void;
pub extern fn reallocarray(__ptr: ?*anyopaque, __nmemb: usize, __size: usize) ?*anyopaque;
pub extern fn alloca(__size: c_ulong) ?*anyopaque;
pub extern fn valloc(__size: usize) ?*anyopaque;
pub extern fn posix_memalign(__memptr: [*c]?*anyopaque, __alignment: usize, __size: usize) c_int;
pub extern fn aligned_alloc(__alignment: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn abort() noreturn;
pub extern fn atexit(__func: ?*const fn () callconv(.c) void) c_int;
pub extern fn at_quick_exit(__func: ?*const fn () callconv(.c) void) c_int;
pub extern fn on_exit(__func: ?*const fn (c_int, ?*anyopaque) callconv(.c) void, __arg: ?*anyopaque) c_int;
pub extern fn exit(__status: c_int) noreturn;
pub extern fn quick_exit(__status: c_int) noreturn;
pub extern fn _Exit(__status: c_int) noreturn;
pub extern fn getenv(__name: [*c]const u8) [*c]u8;
pub extern fn putenv(__string: [*c]u8) c_int;
pub extern fn setenv(__name: [*c]const u8, __value: [*c]const u8, __replace: c_int) c_int;
pub extern fn unsetenv(__name: [*c]const u8) c_int;
pub extern fn clearenv() c_int;
pub extern fn mktemp(__template: [*c]u8) [*c]u8;
pub extern fn mkstemp(__template: [*c]u8) c_int;
pub extern fn mkstemps(__template: [*c]u8, __suffixlen: c_int) c_int;
pub extern fn mkdtemp(__template: [*c]u8) [*c]u8;
pub extern fn system(__command: [*c]const u8) c_int;
pub extern fn realpath(noalias __name: [*c]const u8, noalias __resolved: [*c]u8) [*c]u8;
pub const __compar_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.c) c_int;
pub extern fn bsearch(__key: ?*const anyopaque, __base: ?*const anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) ?*anyopaque;
pub extern fn qsort(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;
pub extern fn abs(__x: c_int) c_int;
pub extern fn labs(__x: c_long) c_long;
pub extern fn llabs(__x: c_longlong) c_longlong;
pub extern fn div(__numer: c_int, __denom: c_int) div_t;
pub extern fn ldiv(__numer: c_long, __denom: c_long) ldiv_t;
pub extern fn lldiv(__numer: c_longlong, __denom: c_longlong) lldiv_t;
pub extern fn ecvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn fcvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn gcvt(__value: f64, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn qecvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qfcvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qgcvt(__value: c_longdouble, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn ecvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn fcvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qecvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qfcvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn mblen(__s: [*c]const u8, __n: usize) c_int;
pub extern fn mbtowc(noalias __pwc: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) c_int;
pub extern fn wctomb(__s: [*c]u8, __wchar: wchar_t) c_int;
pub extern fn mbstowcs(noalias __pwcs: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) usize;
pub extern fn wcstombs(noalias __s: [*c]u8, noalias __pwcs: [*c]const wchar_t, __n: usize) usize;
pub extern fn rpmatch(__response: [*c]const u8) c_int;
pub extern fn getsubopt(noalias __optionp: [*c][*c]u8, noalias __tokens: [*c]const [*c]u8, noalias __valuep: [*c][*c]u8) c_int;
pub extern fn getloadavg(__loadavg: [*c]f64, __nelem: c_int) c_int;

pub const TSStateId = u16;
pub const TSSymbol = u16;
pub const TSFieldId = u16;
pub const struct_TSLanguage = opaque {};
pub const TSLanguage = struct_TSLanguage;
pub const struct_TSParser = opaque {};
pub const TSParser = struct_TSParser;
pub const struct_TSTree = opaque {};
pub const TSTree = struct_TSTree;
pub const struct_TSQuery = opaque {};
pub const TSQuery = struct_TSQuery;
pub const struct_TSQueryCursor = opaque {};
pub const TSQueryCursor = struct_TSQueryCursor;
pub const struct_TSLookaheadIterator = opaque {};
pub const TSLookaheadIterator = struct_TSLookaheadIterator;
pub const DecodeFunction = ?*const fn ([*c]const u8, u32, [*c]i32) callconv(.c) u32;
pub const TSInputEncodingUTF8: c_int = 0;
pub const TSInputEncodingUTF16LE: c_int = 1;
pub const TSInputEncodingUTF16BE: c_int = 2;
pub const TSInputEncodingCustom: c_int = 3;
pub const enum_TSInputEncoding = c_uint;
pub const TSInputEncoding = enum_TSInputEncoding;
pub const TSSymbolTypeRegular: c_int = 0;
pub const TSSymbolTypeAnonymous: c_int = 1;
pub const TSSymbolTypeSupertype: c_int = 2;
pub const TSSymbolTypeAuxiliary: c_int = 3;
pub const enum_TSSymbolType = c_uint;
pub const TSSymbolType = enum_TSSymbolType;
pub const struct_TSPoint = extern struct {
    row: u32 = @import("std").mem.zeroes(u32),
    column: u32 = @import("std").mem.zeroes(u32),
};
pub const TSPoint = struct_TSPoint;
pub const struct_TSRange = extern struct {
    start_point: TSPoint = @import("std").mem.zeroes(TSPoint),
    end_point: TSPoint = @import("std").mem.zeroes(TSPoint),
    start_byte: u32 = @import("std").mem.zeroes(u32),
    end_byte: u32 = @import("std").mem.zeroes(u32),
};
pub const TSRange = struct_TSRange;
pub const struct_TSInput = extern struct {
    payload: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    read: ?*const fn (?*anyopaque, u32, TSPoint, [*c]u32) callconv(.c) [*c]const u8 = @import("std").mem.zeroes(?*const fn (?*anyopaque, u32, TSPoint, [*c]u32) callconv(.c) [*c]const u8),
    encoding: TSInputEncoding = @import("std").mem.zeroes(TSInputEncoding),
    decode: DecodeFunction = @import("std").mem.zeroes(DecodeFunction),
};
pub const TSInput = struct_TSInput;
pub const struct_TSParseState = extern struct {
    payload: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    current_byte_offset: u32 = @import("std").mem.zeroes(u32),
    has_error: bool = @import("std").mem.zeroes(bool),
};
pub const TSParseState = struct_TSParseState;
pub const struct_TSParseOptions = extern struct {
    payload: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    progress_callback: ?*const fn ([*c]TSParseState) callconv(.c) bool = @import("std").mem.zeroes(?*const fn ([*c]TSParseState) callconv(.c) bool),
};
pub const TSParseOptions = struct_TSParseOptions;
pub const TSLogTypeParse: c_int = 0;
pub const TSLogTypeLex: c_int = 1;
pub const enum_TSLogType = c_uint;
pub const TSLogType = enum_TSLogType;
pub const struct_TSLogger = extern struct {
    payload: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    log: ?*const fn (?*anyopaque, TSLogType, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque, TSLogType, [*c]const u8) callconv(.c) void),
};
pub const TSLogger = struct_TSLogger;
pub const struct_TSInputEdit = extern struct {
    start_byte: u32 = @import("std").mem.zeroes(u32),
    old_end_byte: u32 = @import("std").mem.zeroes(u32),
    new_end_byte: u32 = @import("std").mem.zeroes(u32),
    start_point: TSPoint = @import("std").mem.zeroes(TSPoint),
    old_end_point: TSPoint = @import("std").mem.zeroes(TSPoint),
    new_end_point: TSPoint = @import("std").mem.zeroes(TSPoint),
};
pub const TSInputEdit = struct_TSInputEdit;
pub const struct_TSNode = extern struct {
    context: [4]u32 = @import("std").mem.zeroes([4]u32),
    id: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    tree: ?*const TSTree = @import("std").mem.zeroes(?*const TSTree),
};
pub const TSNode = struct_TSNode;
pub const struct_TSTreeCursor = extern struct {
    tree: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    id: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
    context: [3]u32 = @import("std").mem.zeroes([3]u32),
};
pub const TSTreeCursor = struct_TSTreeCursor;
pub const struct_TSQueryCapture = extern struct {
    node: TSNode = @import("std").mem.zeroes(TSNode),
    index: u32 = @import("std").mem.zeroes(u32),
};
pub const TSQueryCapture = struct_TSQueryCapture;
pub const TSQuantifierZero: c_int = 0;
pub const TSQuantifierZeroOrOne: c_int = 1;
pub const TSQuantifierZeroOrMore: c_int = 2;
pub const TSQuantifierOne: c_int = 3;
pub const TSQuantifierOneOrMore: c_int = 4;
pub const enum_TSQuantifier = c_uint;
pub const TSQuantifier = enum_TSQuantifier;
pub const struct_TSQueryMatch = extern struct {
    id: u32 = @import("std").mem.zeroes(u32),
    pattern_index: u16 = @import("std").mem.zeroes(u16),
    capture_count: u16 = @import("std").mem.zeroes(u16),
    captures: [*c]const TSQueryCapture = @import("std").mem.zeroes([*c]const TSQueryCapture),
};
pub const TSQueryMatch = struct_TSQueryMatch;
pub const TSQueryPredicateStepTypeDone: c_int = 0;
pub const TSQueryPredicateStepTypeCapture: c_int = 1;
pub const TSQueryPredicateStepTypeString: c_int = 2;
pub const enum_TSQueryPredicateStepType = c_uint;
pub const TSQueryPredicateStepType = enum_TSQueryPredicateStepType;
pub const struct_TSQueryPredicateStep = extern struct {
    type: TSQueryPredicateStepType = @import("std").mem.zeroes(TSQueryPredicateStepType),
    value_id: u32 = @import("std").mem.zeroes(u32),
};
pub const TSQueryPredicateStep = struct_TSQueryPredicateStep;
pub const TSQueryErrorNone: c_int = 0;
pub const TSQueryErrorSyntax: c_int = 1;
pub const TSQueryErrorNodeType: c_int = 2;
pub const TSQueryErrorField: c_int = 3;
pub const TSQueryErrorCapture: c_int = 4;
pub const TSQueryErrorStructure: c_int = 5;
pub const TSQueryErrorLanguage: c_int = 6;
pub const enum_TSQueryError = c_uint;
pub const TSQueryError = enum_TSQueryError;
pub const struct_TSQueryCursorState = extern struct {
    payload: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    current_byte_offset: u32 = @import("std").mem.zeroes(u32),
};
pub const TSQueryCursorState = struct_TSQueryCursorState;
pub const struct_TSQueryCursorOptions = extern struct {
    payload: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    progress_callback: ?*const fn ([*c]TSQueryCursorState) callconv(.c) bool = @import("std").mem.zeroes(?*const fn ([*c]TSQueryCursorState) callconv(.c) bool),
};
pub const TSQueryCursorOptions = struct_TSQueryCursorOptions;
pub const struct_TSLanguageMetadata = extern struct {
    major_version: u8 = @import("std").mem.zeroes(u8),
    minor_version: u8 = @import("std").mem.zeroes(u8),
    patch_version: u8 = @import("std").mem.zeroes(u8),
};
pub const TSLanguageMetadata = struct_TSLanguageMetadata;
pub extern fn ts_parser_new() ?*TSParser;
pub extern fn ts_parser_delete(self: ?*TSParser) void;
pub extern fn ts_parser_language(self: ?*const TSParser) ?*const TSLanguage;
pub extern fn ts_parser_set_language(self: ?*TSParser, language: ?*const TSLanguage) bool;
pub extern fn ts_parser_set_included_ranges(self: ?*TSParser, ranges: [*c]const TSRange, count: u32) bool;
pub extern fn ts_parser_included_ranges(self: ?*const TSParser, count: [*c]u32) [*c]const TSRange;
pub extern fn ts_parser_parse(self: ?*TSParser, old_tree: ?*const TSTree, input: TSInput) ?*TSTree;
pub extern fn ts_parser_parse_with_options(self: ?*TSParser, old_tree: ?*const TSTree, input: TSInput, parse_options: TSParseOptions) ?*TSTree;
pub extern fn ts_parser_parse_string(self: ?*TSParser, old_tree: ?*const TSTree, string: [*c]const u8, length: u32) ?*TSTree;
pub extern fn ts_parser_parse_string_encoding(self: ?*TSParser, old_tree: ?*const TSTree, string: [*c]const u8, length: u32, encoding: TSInputEncoding) ?*TSTree;
pub extern fn ts_parser_reset(self: ?*TSParser) void;
pub extern fn ts_parser_set_timeout_micros(self: ?*TSParser, timeout_micros: u64) void;
pub extern fn ts_parser_timeout_micros(self: ?*const TSParser) u64;
pub extern fn ts_parser_set_cancellation_flag(self: ?*TSParser, flag: [*c]const usize) void;
pub extern fn ts_parser_cancellation_flag(self: ?*const TSParser) [*c]const usize;
pub extern fn ts_parser_set_logger(self: ?*TSParser, logger: TSLogger) void;
pub extern fn ts_parser_logger(self: ?*const TSParser) TSLogger;
pub extern fn ts_parser_print_dot_graphs(self: ?*TSParser, fd: c_int) void;
pub extern fn ts_tree_copy(self: ?*const TSTree) ?*TSTree;
pub extern fn ts_tree_delete(self: ?*TSTree) void;
pub extern fn ts_tree_root_node(self: ?*const TSTree) TSNode;
pub extern fn ts_tree_root_node_with_offset(self: ?*const TSTree, offset_bytes: u32, offset_extent: TSPoint) TSNode;
pub extern fn ts_tree_language(self: ?*const TSTree) ?*const TSLanguage;
pub extern fn ts_tree_included_ranges(self: ?*const TSTree, length: [*c]u32) [*c]TSRange;
pub extern fn ts_tree_edit(self: ?*TSTree, edit: [*c]const TSInputEdit) void;
pub extern fn ts_tree_get_changed_ranges(old_tree: ?*const TSTree, new_tree: ?*const TSTree, length: [*c]u32) [*c]TSRange;
pub extern fn ts_tree_print_dot_graph(self: ?*const TSTree, file_descriptor: c_int) void;
pub extern fn ts_node_type(self: TSNode) [*c]const u8;
pub extern fn ts_node_symbol(self: TSNode) TSSymbol;
pub extern fn ts_node_language(self: TSNode) ?*const TSLanguage;
pub extern fn ts_node_grammar_type(self: TSNode) [*c]const u8;
pub extern fn ts_node_grammar_symbol(self: TSNode) TSSymbol;
pub extern fn ts_node_start_byte(self: TSNode) u32;
pub extern fn ts_node_start_point(self: TSNode) TSPoint;
pub extern fn ts_node_end_byte(self: TSNode) u32;
pub extern fn ts_node_end_point(self: TSNode) TSPoint;
pub extern fn ts_node_string(self: TSNode) [*c]u8;
pub extern fn ts_node_is_null(self: TSNode) bool;
pub extern fn ts_node_is_named(self: TSNode) bool;
pub extern fn ts_node_is_missing(self: TSNode) bool;
pub extern fn ts_node_is_extra(self: TSNode) bool;
pub extern fn ts_node_has_changes(self: TSNode) bool;
pub extern fn ts_node_has_error(self: TSNode) bool;
pub extern fn ts_node_is_error(self: TSNode) bool;
pub extern fn ts_node_parse_state(self: TSNode) TSStateId;
pub extern fn ts_node_next_parse_state(self: TSNode) TSStateId;
pub extern fn ts_node_parent(self: TSNode) TSNode;
pub extern fn ts_node_child_with_descendant(self: TSNode, descendant: TSNode) TSNode;
pub extern fn ts_node_child(self: TSNode, child_index: u32) TSNode;
pub extern fn ts_node_field_name_for_child(self: TSNode, child_index: u32) [*c]const u8;
pub extern fn ts_node_field_name_for_named_child(self: TSNode, named_child_index: u32) [*c]const u8;
pub extern fn ts_node_child_count(self: TSNode) u32;
pub extern fn ts_node_named_child(self: TSNode, child_index: u32) TSNode;
pub extern fn ts_node_named_child_count(self: TSNode) u32;
pub extern fn ts_node_child_by_field_name(self: TSNode, name: [*c]const u8, name_length: u32) TSNode;
pub extern fn ts_node_child_by_field_id(self: TSNode, field_id: TSFieldId) TSNode;
pub extern fn ts_node_next_sibling(self: TSNode) TSNode;
pub extern fn ts_node_prev_sibling(self: TSNode) TSNode;
pub extern fn ts_node_next_named_sibling(self: TSNode) TSNode;
pub extern fn ts_node_prev_named_sibling(self: TSNode) TSNode;
pub extern fn ts_node_first_child_for_byte(self: TSNode, byte: u32) TSNode;
pub extern fn ts_node_first_named_child_for_byte(self: TSNode, byte: u32) TSNode;
pub extern fn ts_node_descendant_count(self: TSNode) u32;
pub extern fn ts_node_descendant_for_byte_range(self: TSNode, start: u32, end: u32) TSNode;
pub extern fn ts_node_descendant_for_point_range(self: TSNode, start: TSPoint, end: TSPoint) TSNode;
pub extern fn ts_node_named_descendant_for_byte_range(self: TSNode, start: u32, end: u32) TSNode;
pub extern fn ts_node_named_descendant_for_point_range(self: TSNode, start: TSPoint, end: TSPoint) TSNode;
pub extern fn ts_node_edit(self: [*c]TSNode, edit: [*c]const TSInputEdit) void;
pub extern fn ts_node_eq(self: TSNode, other: TSNode) bool;
pub extern fn ts_tree_cursor_new(node: TSNode) TSTreeCursor;
pub extern fn ts_tree_cursor_delete(self: [*c]TSTreeCursor) void;
pub extern fn ts_tree_cursor_reset(self: [*c]TSTreeCursor, node: TSNode) void;
pub extern fn ts_tree_cursor_reset_to(dst: [*c]TSTreeCursor, src: [*c]const TSTreeCursor) void;
pub extern fn ts_tree_cursor_current_node(self: [*c]const TSTreeCursor) TSNode;
pub extern fn ts_tree_cursor_current_field_name(self: [*c]const TSTreeCursor) [*c]const u8;
pub extern fn ts_tree_cursor_current_field_id(self: [*c]const TSTreeCursor) TSFieldId;
pub extern fn ts_tree_cursor_goto_parent(self: [*c]TSTreeCursor) bool;
pub extern fn ts_tree_cursor_goto_next_sibling(self: [*c]TSTreeCursor) bool;
pub extern fn ts_tree_cursor_goto_previous_sibling(self: [*c]TSTreeCursor) bool;
pub extern fn ts_tree_cursor_goto_first_child(self: [*c]TSTreeCursor) bool;
pub extern fn ts_tree_cursor_goto_last_child(self: [*c]TSTreeCursor) bool;
pub extern fn ts_tree_cursor_goto_descendant(self: [*c]TSTreeCursor, goal_descendant_index: u32) void;
pub extern fn ts_tree_cursor_current_descendant_index(self: [*c]const TSTreeCursor) u32;
pub extern fn ts_tree_cursor_current_depth(self: [*c]const TSTreeCursor) u32;
pub extern fn ts_tree_cursor_goto_first_child_for_byte(self: [*c]TSTreeCursor, goal_byte: u32) i64;
pub extern fn ts_tree_cursor_goto_first_child_for_point(self: [*c]TSTreeCursor, goal_point: TSPoint) i64;
pub extern fn ts_tree_cursor_copy(cursor: [*c]const TSTreeCursor) TSTreeCursor;
pub extern fn ts_query_new(language: ?*const TSLanguage, source: [*c]const u8, source_len: u32, error_offset: [*c]u32, error_type: [*c]TSQueryError) ?*TSQuery;
pub extern fn ts_query_delete(self: ?*TSQuery) void;
pub extern fn ts_query_pattern_count(self: ?*const TSQuery) u32;
pub extern fn ts_query_capture_count(self: ?*const TSQuery) u32;
pub extern fn ts_query_string_count(self: ?*const TSQuery) u32;
pub extern fn ts_query_start_byte_for_pattern(self: ?*const TSQuery, pattern_index: u32) u32;
pub extern fn ts_query_end_byte_for_pattern(self: ?*const TSQuery, pattern_index: u32) u32;
pub extern fn ts_query_predicates_for_pattern(self: ?*const TSQuery, pattern_index: u32, step_count: [*c]u32) [*c]const TSQueryPredicateStep;
pub extern fn ts_query_is_pattern_rooted(self: ?*const TSQuery, pattern_index: u32) bool;
pub extern fn ts_query_is_pattern_non_local(self: ?*const TSQuery, pattern_index: u32) bool;
pub extern fn ts_query_is_pattern_guaranteed_at_step(self: ?*const TSQuery, byte_offset: u32) bool;
pub extern fn ts_query_capture_name_for_id(self: ?*const TSQuery, index: u32, length: [*c]u32) [*c]const u8;
pub extern fn ts_query_capture_quantifier_for_id(self: ?*const TSQuery, pattern_index: u32, capture_index: u32) TSQuantifier;
pub extern fn ts_query_string_value_for_id(self: ?*const TSQuery, index: u32, length: [*c]u32) [*c]const u8;
pub extern fn ts_query_disable_capture(self: ?*TSQuery, name: [*c]const u8, length: u32) void;
pub extern fn ts_query_disable_pattern(self: ?*TSQuery, pattern_index: u32) void;
pub extern fn ts_query_cursor_new() ?*TSQueryCursor;
pub extern fn ts_query_cursor_delete(self: ?*TSQueryCursor) void;
pub extern fn ts_query_cursor_exec(self: ?*TSQueryCursor, query: ?*const TSQuery, node: TSNode) void;
pub extern fn ts_query_cursor_exec_with_options(self: ?*TSQueryCursor, query: ?*const TSQuery, node: TSNode, query_options: [*c]const TSQueryCursorOptions) void;
pub extern fn ts_query_cursor_did_exceed_match_limit(self: ?*const TSQueryCursor) bool;
pub extern fn ts_query_cursor_match_limit(self: ?*const TSQueryCursor) u32;
pub extern fn ts_query_cursor_set_match_limit(self: ?*TSQueryCursor, limit: u32) void;
pub extern fn ts_query_cursor_set_timeout_micros(self: ?*TSQueryCursor, timeout_micros: u64) void;
pub extern fn ts_query_cursor_timeout_micros(self: ?*const TSQueryCursor) u64;
pub extern fn ts_query_cursor_set_byte_range(self: ?*TSQueryCursor, start_byte: u32, end_byte: u32) bool;
pub extern fn ts_query_cursor_set_point_range(self: ?*TSQueryCursor, start_point: TSPoint, end_point: TSPoint) bool;
pub extern fn ts_query_cursor_next_match(self: ?*TSQueryCursor, match: [*c]TSQueryMatch) bool;
pub extern fn ts_query_cursor_remove_match(self: ?*TSQueryCursor, match_id: u32) void;
pub extern fn ts_query_cursor_next_capture(self: ?*TSQueryCursor, match: [*c]TSQueryMatch, capture_index: [*c]u32) bool;
pub extern fn ts_query_cursor_set_max_start_depth(self: ?*TSQueryCursor, max_start_depth: u32) void;
pub extern fn ts_language_copy(self: ?*const TSLanguage) ?*const TSLanguage;
pub extern fn ts_language_delete(self: ?*const TSLanguage) void;
pub extern fn ts_language_symbol_count(self: ?*const TSLanguage) u32;
pub extern fn ts_language_state_count(self: ?*const TSLanguage) u32;
pub extern fn ts_language_symbol_for_name(self: ?*const TSLanguage, string: [*c]const u8, length: u32, is_named: bool) TSSymbol;
pub extern fn ts_language_field_count(self: ?*const TSLanguage) u32;
pub extern fn ts_language_field_name_for_id(self: ?*const TSLanguage, id: TSFieldId) [*c]const u8;
pub extern fn ts_language_field_id_for_name(self: ?*const TSLanguage, name: [*c]const u8, name_length: u32) TSFieldId;
pub extern fn ts_language_supertypes(self: ?*const TSLanguage, length: [*c]u32) [*c]const TSSymbol;
pub extern fn ts_language_subtypes(self: ?*const TSLanguage, supertype: TSSymbol, length: [*c]u32) [*c]const TSSymbol;
pub extern fn ts_language_symbol_name(self: ?*const TSLanguage, symbol: TSSymbol) [*c]const u8;
pub extern fn ts_language_symbol_type(self: ?*const TSLanguage, symbol: TSSymbol) TSSymbolType;
pub extern fn ts_language_version(self: ?*const TSLanguage) u32;
pub extern fn ts_language_abi_version(self: ?*const TSLanguage) u32;
pub extern fn ts_language_metadata(self: ?*const TSLanguage) [*c]const TSLanguageMetadata;
pub extern fn ts_language_next_state(self: ?*const TSLanguage, state: TSStateId, symbol: TSSymbol) TSStateId;
pub extern fn ts_language_name(self: ?*const TSLanguage) [*c]const u8;
pub extern fn ts_lookahead_iterator_new(self: ?*const TSLanguage, state: TSStateId) ?*TSLookaheadIterator;
pub extern fn ts_lookahead_iterator_delete(self: ?*TSLookaheadIterator) void;
pub extern fn ts_lookahead_iterator_reset_state(self: ?*TSLookaheadIterator, state: TSStateId) bool;
pub extern fn ts_lookahead_iterator_reset(self: ?*TSLookaheadIterator, language: ?*const TSLanguage, state: TSStateId) bool;
pub extern fn ts_lookahead_iterator_language(self: ?*const TSLookaheadIterator) ?*const TSLanguage;
pub extern fn ts_lookahead_iterator_next(self: ?*TSLookaheadIterator) bool;
pub extern fn ts_lookahead_iterator_current_symbol(self: ?*const TSLookaheadIterator) TSSymbol;
pub extern fn ts_lookahead_iterator_current_symbol_name(self: ?*const TSLookaheadIterator) [*c]const u8;
pub const struct_wasm_engine_t = opaque {};
pub const TSWasmEngine = struct_wasm_engine_t;
pub const struct_TSWasmStore = opaque {};
pub const TSWasmStore = struct_TSWasmStore;
pub const TSWasmErrorKindNone: c_int = 0;
pub const TSWasmErrorKindParse: c_int = 1;
pub const TSWasmErrorKindCompile: c_int = 2;
pub const TSWasmErrorKindInstantiate: c_int = 3;
pub const TSWasmErrorKindAllocate: c_int = 4;
pub const TSWasmErrorKind = c_uint;
pub const TSWasmError = extern struct {
    kind: TSWasmErrorKind = @import("std").mem.zeroes(TSWasmErrorKind),
    message: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub extern fn ts_wasm_store_new(engine: ?*TSWasmEngine, @"error": [*c]TSWasmError) ?*TSWasmStore;
pub extern fn ts_wasm_store_delete(?*TSWasmStore) void;
pub extern fn ts_wasm_store_load_language(?*TSWasmStore, name: [*c]const u8, wasm: [*c]const u8, wasm_len: u32, @"error": [*c]TSWasmError) ?*const TSLanguage;
pub extern fn ts_wasm_store_language_count(?*const TSWasmStore) usize;
pub extern fn ts_language_is_wasm(?*const TSLanguage) bool;
pub extern fn ts_parser_set_wasm_store(?*TSParser, ?*TSWasmStore) void;
pub extern fn ts_parser_take_wasm_store(?*TSParser) ?*TSWasmStore;
pub extern fn ts_set_allocator(new_malloc: ?*const fn (usize) callconv(.c) ?*anyopaque, new_calloc: ?*const fn (usize, usize) callconv(.c) ?*anyopaque, new_realloc: ?*const fn (?*anyopaque, usize) callconv(.c) ?*anyopaque, new_free: ?*const fn (?*anyopaque) callconv(.c) void) void;
pub const TREE_SITTER_LANGUAGE_VERSION = @as(c_int, 15);
pub const TREE_SITTER_MIN_COMPATIBLE_LANGUAGE_VERSION = @as(c_int, 13);
