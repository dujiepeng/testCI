#!/bin/sh
echo */
security create-keychain -p travis ios-build.keychain
security import ./testCI/scripts/certs/apple.cer -k ~/Library/Keychains/ios-build.keychain -T /usr/bin/codesign
security import ./testCI/scripts/certs/dist.cer -k ~/Library/Keychains/ios-build.keychain -T /usr/bin/codesign
security import ./testCI/scripts/certs/dist.p12 -k ~/Library/Keychains/ios-build.keychain -P $KEY_PASSWORD -T /usr/bin/codesign
mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles
cp ./testCI/scripts/profile/testCI.mobileprovision ~/Library/MobileDevice/Provisioning\ Profiles/
security cms -D -i ./testCI/scripts/profile/testCI.mobileprovision