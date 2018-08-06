#!/bin/sh
# xcodebuild -project testCI/testCI.xcodeproj -target testCI -sdk iphonesimulator ONLY_ACTIVE_ARCH=NO
xcodebuild archive -project testCI/testCI.xcodeproj -scheme testCI -configuration Release -archivePath archive/testCI.xcarchive CODE_SIGN_IDENTITY="iPhone Developer"
xcodebuild -exportArchive -archivePath archive/testCI.xcarchive -exportPath build  -exportOptionsPlist ./testCI/ExportOptions.plist