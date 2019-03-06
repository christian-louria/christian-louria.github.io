all:
	rm -rf hacks/TW001/.DS_Store
	rm -rf hacks/TW002/.DS_Store
	rm -rf hacks/animweatherHS/.DS_Store
	rm -rf hacks/animweatherLS/.DS_Store


	fpm -s dir -t deb -n TW001 -a iphoneos-arm -v 1.2 hacks/TW001=/var/mobile/Library/SBHTML
	fpm -s dir -t deb -n TW002 -a iphoneos-arm -v 1.1 hacks/TW002=/var/mobile/Library/SBHTML
	fpm -s dir -t deb -n animweatherHS -a iphoneos-arm -v 1.1 hacks/animweatherHS=/var/mobile/Library/SBHTML
	fpm -s dir -t deb -n animweatherLS -a iphoneos-arm -v 1.1 hacks/animweatherLS=/var/mobile/Library/iWidgets



	rm debs/*.deb
	mv *.deb debs/
	./dpkg-scanpackages -m debs/ /dev/null > Packages
	rm Packages.bz2
	bzip2 Packages

