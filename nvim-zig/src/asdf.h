// #include <cstdint>
struct String {
  const char *data;
  long long size;
};

struct Array {
  long long size;
  long long otherField;
  void *asdf;
};
union ObjectData {
  char boolean;
  int integer;
  float floating;
  struct String string;
  struct Array array;
};

struct Error {
  int type;
  const char *asdf;
};

enum ObjectKind {
  Nil = 0,
  Boolean = 1,
  Integer = 2,
  Float = 3,
  String = 4,
  Array = 5,
  Dictionary = 6,
  LuaRef = 7,
  Buffer = 8,
  Window = 9,
  TabPage = 10,

};

struct Object {
  int kind;
  union ObjectData data;
};

struct OptionOpts {
  long long mask;
  struct String scope;
  int win;
  int buf;
  struct String filetype;
};

void nvim_set_option_value(long long channel, struct String name,
                           struct Object value, struct OptionOpts *opts,
                           struct Error *err);
