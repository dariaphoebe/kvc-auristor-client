ifndef DESTDIR
DESTDIR=/usr/
endif
ifndef CONFDIR
CONFDIR=/etc
endif

install:
	install -v -m 644 auristor-client-lib.sh $(DESTDIR)/lib/kvc/
	install -v -m 644 auristor-client.conf $(CONFDIR)/kvc/
	install -v -m 755 auristor-client-wrapper.sh $(DESTDIR)/lib/kvc/
	ln -sf ../lib/kvc/auristor-client-wrapper.sh $(DESTDIR)/bin/spkut
