# android-backup-tools

A set of bash scripts to help manipulate android backup (adb backup) without encryption.

## How to use (by example)

### Simple

	# backup apps from android device
	adb backup -f backup.ab -apk -all

	# extract some specific app
	extract.sh com.example.appx

	# restore this app
	adb restore com.example.appx.ab

### Complete

	# backup apps from android device
	adb backup -f backup.ab -apk -all

	# unwrap backup.tar from backup.ab (optional - to speed up)
	unwrap.sh

	# list apps
	listapps.sh

	# unpack some specific app
	unpack.sh com.example.appx

	# edit files (optional)
	vi com.example.appx/apps/com.example.appx/sp/somefile.xml

	# edit file list to be included (optional)
	vi com.example.appx/files.txt

	# repack tar for this app: com.example.appx/backup.tar
	pack.sh com.example.appx

	# wrap tar inside android backup file: com.example.appx/backup.ab
	wrap.sh com.example.appx

	# restore backup
	adb restore com.example.appx/backup.ab

## What about encrypted backups?

Check out: https://github.com/nelenkov/android-backup-extractor
