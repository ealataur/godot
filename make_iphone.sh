#!/bin/bash
scons p=iphone target=release_debug tools=no arch=arm module_appodeal_enabled=yes module_arkit_enabled=no module_btle_enabled=no module_camera_enabled=no module_tinycbor_enabled=no bits=32 -j9
scons p=iphone target=release_debug tools=no arch=arm64 module_appodeal_enabled=yes module_arkit_enabled=no module_btle_enabled=no module_camera_enabled=no module_tinycbor_enabled=no bits=64 -j9
lipo -create bin/libgodot.iphone.opt.debug.arm.a bin/libgodot.iphone.opt.debug.arm64.a -output bin/iphone.release_debug.3.1.a
chmod +x bin/iphone.release_debug.3.1.a
# cp bin/iphone.release_debug.3.1.a ../runner_xcode/the_lost_post.a
