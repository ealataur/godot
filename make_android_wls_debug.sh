#!/bin/bash
scons p=android target=debug tools=no android_arch=armv7 \
ndk_platform=android-22 module_admob_enabled=no module_spine_enabled=no \
module_btle_enabled=yes module_share_enabled=no -j9
scons p=android target=debug tools=no android_arch=arm64v8 \
ndk_platform=android-22 module_admob_enabled=no \
module_btle_enabled=yes module_spine_enabled=no module_share_enabled=no -j9
scons p=android target=release tools=no android_arch=x86 module_admob_enabled=no \
ndk_platform=android-22 module_spine_enabled=no module_share_enabled=no \
module_btle_enabled=yes -j9
# scons p=android target=release_debug tools=no arch=arm64 bits=64 module_admob_enabled=no module_spine_enabled=no module_share_enabled=yes -j9
# cd platform/android/java
# ./gradlew build
# chmod +x bin/wls_iphone.release_debug.3.1.a
# cp bin/iphone.release_debug.3.1.a ../runner_xcode/the_lost_post.a
