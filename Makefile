INSTALLDIR=$(DESTDIR)/usr/share/vlc/skins2
RM = rm -rf

all:

install: local

clear:
	$(RM) $(INSTALLDIR)/Arc-Dark-Flatabulous-left.vlt
	$(RM) $(INSTALLDIR)/Arc-Dark-Flatabulous-right.vlt
local:
	find Arc-Dark-Flatabulous-left.vlt -type f -exec install -Dm644 '{}' "$(INSTALLDIR)/{}" \;
	find Arc-Dark-Flatabulous-right.vlt -type f -exec install -Dm644 '{}' "$(INSTALLDIR)/{}" \;

uninstall: clear
