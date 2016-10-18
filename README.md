# Qualify Device Cloud Sample App for iOS

## Getting Started
In order to run this app within automation platform you will need to create a local copy of this repository and build the application from source.

#### Packing and Creating IPA
1. Go into your build directory: 

	```
	$ cd ~/Library/Developer/Xcode/DerivedData/[PROJECT_NAME]/Build/Products/Debug-iphoneos
	```

2. Create a new directory named "Payload"

	```
	$ mkdir Payload
	```

3. Move the QualifyLabsReferenceApp.app folder into the "Payload" folder

	```
	$ cp -r QualifyLabsReferenceApp.app Payload
	```

4. Zip the "Payload" folder and give it a .ipa extension

	```
	$ zip -r test.ipa Payload
	```

## Notes
* All of the views are programatically created within the app. Storyboard or XIB files are not used. This is to prevent merge conflicts in the future.
