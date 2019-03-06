all:
	rm -rf hacks/TW001/.DS_Store
	rm -rf hacks/TW002/.DS_Store
	rm -rf hacks/animweather/.DS_Store

	fpm -s dir -t deb -n TW001 -a iphoneos-arm -v 1.2 hacks/TW001=/var/mobile/Library/SBHTML
	fpm -s dir -t deb -n TW002 -a iphoneos-arm -v 1.1 hacks/TW002=/var/mobile/Library/SBHTML
	fpm -s dir -t deb -n animweather -a iphoneos-arm -v 1.1 hacks/animweather=/var/mobile/Library/SBHTML


	rm debs/*.deb
	mv *.deb debs/
	./dpkg-scanpackages -m debs/ /dev/null > Packages
	rm Packages.bz2
	bzip2 Packages

