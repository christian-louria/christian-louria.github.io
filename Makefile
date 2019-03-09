all:
	rm -rf hacks/lineBottomWidget/.DS_Store
	rm -rf hacks/lineTopWidget/.DS_Store
	rm -rf hacks/animweatherHS/.DS_Store
	rm -rf hacks/animweatherLS/.DS_Store
	rm -rf hacks/stacksLS/.DS_Store
	rm -rf hacks/chargedup/.DS_Store


	fpm -s dir -t deb -n lineBottomWidget -a iphoneos-arm -v 1.2 hacks/lineBottomWidget=/var/mobile/Library/SBHTML
	fpm -s dir -t deb -n lineTopWidget -a iphoneos-arm -v 1.4 hacks/lineTopWidget=/var/mobile/Library/SBHTML
	fpm -s dir -t deb -n animweatherHS -a iphoneos-arm -v 1.4.1 hacks/animweatherHS=/var/mobile/Library/SBHTML
	fpm -s dir -t deb -n animweatherLS -a iphoneos-arm -v 1.1 hacks/animweatherLS=/var/mobile/Library/iWidgets
	fpm -s dir -t deb -n stacksLS -a iphoneos-arm -v 2.1.1 hacks/stacksLS=/var/mobile/Library/iWidgets
	fpm -s dir -t deb -n chargedup -a iphoneos-arm -v 2.7 hacks/chargedup=/var/mobile/Library/iWidgets





	rm debs/*.deb
	mv *.deb debs/
	./dpkg-scanpackages -m debs/ /dev/null > Packages
	rm Packages.bz2
	bzip2 Packages

