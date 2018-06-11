INSTALLDIR=$(DESTDIR)/usr/share/vlc/skins2
RM = rm -rf

all:

install: local

clear:
	$(RM) $(INSTALLDIR)/Arc-Dark-Flatabulous.vlt
local:
	find Arc-Dark-Flatabulous.vlt -type f -exec install -Dm644 '{}' "$(INSTALLDIR)/{}" \;

uninstall: clear
