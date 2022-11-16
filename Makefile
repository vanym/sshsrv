
PREFIX?=/usr/local

BINDIR=$(PREFIX)/bin

all:

install-tcpsrvconnect: tcpsrvconnect
	install -Dm755 ./tcpsrvconnect $(DESTDIR)$(BINDIR)/tcpsrvconnect

install-sshsrv: sshsrv
	install -Dm755 ./sshsrv $(DESTDIR)$(BINDIR)/sshsrv

install: install-tcpsrvconnect install-sshsrv

uninstall-tcpsrvconnect:
	$(RM) $(DESTDIR)$(BINDIR)/tcpsrvconnect

uninstall-sshsrv:
	$(RM) $(DESTDIR)$(BINDIR)/sshsrv

uninstall: uninstall-tcpsrvconnect uninstall-sshsrv

.PHONY: all install install-sshsrv install-tcpsrvconnect uninstall uninstall-sshsrv uninstall-tcpsrvconnect
