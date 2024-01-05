O=Objs/

HDRS=src/config.h src/pcre2.h

OBJS= \
	$(O)pcre2_auto_possess.o \
	$(O)pcre2_chkdint.o \
	$(O)pcre2_chartables.o \
	$(O)pcre2_compile.o \
	$(O)pcre2_config.o \
	$(O)pcre2_context.o \
	$(O)pcre2_convert.o \
	$(O)pcre2_dfa_match.o \
	$(O)pcre2_error.o \
	$(O)pcre2_extuni.o \
	$(O)pcre2_find_bracket.o \
	$(O)pcre2_jit_compile.o \
	$(O)pcre2_maketables.o \
	$(O)pcre2_match.o \
	$(O)pcre2_match_data.o \
	$(O)pcre2_newline.o \
	$(O)pcre2_ord2utf.o \
	$(O)pcre2_pattern_info.o \
	$(O)pcre2_script_run.o \
	$(O)pcre2_serialize.o \
	$(O)pcre2_string_utils.o \
	$(O)pcre2_study.o \
	$(O)pcre2_substitute.o \
	$(O)pcre2_substring.o \
	$(O)pcre2_tables.o \
	$(O)pcre2_ucd.o \
	$(O)pcre2_valid_utf.o \
	$(O)pcre2_xclass.o

.PHONY: all
all: $(O) $(O)libpcre2.a

$(O)libpcre2.a: $(OBJS)
	$(AR) rv $@ $?

$(O):
	if [ ! -d $(O) ]; then mkdir $(O); fi

$(O)pcre2_auto_possess.o:src/pcre2_auto_possess.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_chkdint.o:	src/pcre2_chkdint.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_chartables.o:	src/pcre2_chartables.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_compile.o:	src/pcre2_compile.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_config.o:	src/pcre2_config.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_context.o:	src/pcre2_context.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_convert.o:	src/pcre2_convert.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_dfa_match.o:	src/pcre2_dfa_match.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_error.o:	src/pcre2_error.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_extuni.o:	src/pcre2_extuni.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_find_bracket.o:	src/pcre2_find_bracket.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_jit_compile.o:	src/pcre2_jit_compile.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_maketables.o:	src/pcre2_maketables.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_match.o:	src/pcre2_match.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_match_data.o:	src/pcre2_match_data.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_newline.o:	src/pcre2_newline.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_ord2utf.o:	src/pcre2_ord2utf.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_pattern_info.o:	src/pcre2_pattern_info.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_script_run.o:	src/pcre2_script_run.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_serialize.o:	src/pcre2_serialize.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_string_utils.o:	src/pcre2_string_utils.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_study.o:	src/pcre2_study.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_substitute.o:	src/pcre2_substitute.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_substring.o:	src/pcre2_substring.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_tables.o:	src/pcre2_tables.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_ucd.o:	src/pcre2_ucd.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_valid_utf.o:	src/pcre2_valid_utf.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<

$(O)pcre2_xclass.o:	src/pcre2_xclass.c $(HDRS)
	$(CC) $(CFLAGS) -c -o $@ $<
