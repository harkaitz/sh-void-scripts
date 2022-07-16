DESTDIR     =
PREFIX      =/usr/local
all:
clean:
install:
## -- license --
ifneq ($(PREFIX),)
install: install-license
install-license: LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-void-scripts
	cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-void-scripts
endif
## -- license --
## -- install-sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/setup-socat-proxy bin/setup-base bin/setup-smtpd bin/setup-scron bin/setup-msmtp bin/setup-mpop bin/setup-popd bin/setup-thttpd bin/setup-haproxy-https  $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
