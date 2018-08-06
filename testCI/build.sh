
# xcodebuild archive -workspace easemob-OA.xcworkspace -scheme easemob-OA -configuration Release -archivePath archive/easemob-OA.xcarchive CODE_SIGN_IDENTITY="iPhone Developer"
# xcodebuild -exportArchive -archivePath archive/easemob-OA.xcarchive -exportPath build  -exportOptionsPlist ./ExportOptions.plist




xcodebuild archive -project testCI.xcodeproj -scheme testCI -configuration Release -archivePath archive/testCI.xcarchive CODE_SIGN_IDENTITY="iPhone Developer"
xcodebuild -exportArchive -archivePath archive/testCI.xcarchive -exportPath build  -exportOptionsPlist ./ExportOptions.plist