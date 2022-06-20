DESTDIR     =
PREFIX      =/usr/local
SCRIPTS_BIN =$(shell test ! -d bin || find bin -executable -type f)
MANPAGES_1  =$(shell test ! -d man || find man -iregex '.*\.1$$')
all:
clean:
install:
    ifneq ($(SCRIPTS_BIN),)
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp $(SCRIPTS_BIN) $(DESTDIR)$(PREFIX)/bin
    endif
    ifneq ($(MANPAGES_1),)
	mkdir -p $(DESTDIR)$(PREFIX)/share/man/man1
	cp $(MANPAGES_1) $(DESTDIR)$(PREFIX)/share/man/man1
    endif
