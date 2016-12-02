all:

install:
	cp envmap3d /usr/share/menu
	cp envmap3d-16x16.xpm /usr/share/pixmaps
	cp envmap3d-32x32.xpm /usr/share/pixmaps
	rm -fr /opt/envmap3d
	mkdir /opt/envmap3d
	cp bin/envmap3d /opt/envmap3d/envmap3d
	chmod a+x /opt/envmap3d/envmap3d
	mkdir /opt/envmap3d/res
	cp res/* /opt/envmap3d/res
	cp envmap3d.desktop /usr/share/applications



