#include <stdint.h>
#include <stdio.h>
#include <string.h>
struct String {
  const char *data;
  uint64_t size;
};

struct Array {
  uint64_t size;
  uint64_t otherField;
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
  char *asdf;
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
  uint64_t mask;
  struct String scope;
  int win;
  int buf;
  struct String filetype;
};

void nvim_set_option_value(uint64_t channel, struct String name,
                           struct Object value, struct OptionOpts *opts,
                           struct Error *err);

extern void nvim_set_option_value2(uint64_t channel, struct String name,
                                   struct Object value, struct OptionOpts *opts,
                                   struct Error *err) {
  nvim_set_option_value(0, name, value, opts, err);
}

extern void cool2() {

  int mask = 1 << 2;
  const struct String scope = {
      .data = "local",
      .size = 6,
  };
  const struct OptionOpts opts = {
      .mask = mask,
      .win = 1001,
      .scope = scope,
  };
  const char *optionName = "signcolumn";

  const struct String name = {.data = optionName, .size = strlen(optionName)};

  const char *valueName = "no";
  const struct String valueT = {
      .data = valueName,
      .size = strlen(valueName),
  };

  const struct Object value = {.kind = String, .data = {.string = valueT}};

  const struct Error err = {
      .asdf = "",
      .type = -1,
  };
  FILE *file;
  file = fopen("c.txt", "w");
  // const uint8_t *namePtr = &name;
  // for (int i = 0; i < sizeof(typeof(name)); i++) {
  //   char arr[20] = {};
  //   const uint8_t num = namePtr[i];
  //   fprintf(file, "name+%d: %b\n", i, num);
  //   const int asdff = 0;
  // }
  // const uint8_t *valuePtr = &value;
  // for (int i = 0; i < sizeof(typeof(value)); i++) {
  //   char arr[20] = {};
  //   const uint8_t num = valuePtr[i];
  //   fprintf(file, "value+%d: %b\n", i, num);
  //   const int asdff = 0;
  // }
  const uint8_t *errPtr = &err;
  for (int i = 0; i < sizeof(typeof(err)); i++) {
    char arr[20] = {};
    const uint8_t num = errPtr[i];
    fprintf(file, "err+%d: %b\n", i, num);
    const int asdff = 0;
  }
  fclose(file);
  const int optsSize = sizeof(struct OptionOpts);
  const int strSize = sizeof(struct String);
  const int objSize = sizeof(struct Object);
  const int kindSize = sizeof(int);

  // nvim_set_option_value2(0, name, value, &opts, &err);
}
