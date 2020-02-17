#!/bin/bash
scons p=iphone target=release_debug tools=no arch=arm bits=32 \
	module_appodeal_enabled=no \
	module_admob_enabled=no \
	module_spine_enabled=no \
	module_share_enabled=no \
	module_arkit_enabled=no \
	module_mobile_vr_enabled=no \
	camera_ios=no \
	module_camera_enabled=no \
	icloud=no \
	store_kit=no \
	game_center=no -j9
scons p=iphone target=release_debug tools=no arch=arm64 bits=64 \
	module_appodeal_enabled=no \
	module_admob_enabled=no \
	module_spine_enabled=no \
	module_share_enabled=no \
	module_arkit_enabled=no \
	module_mobile_vr_enabled=no \
	camera_ios=no \
	module_camera_enabled=no \
	icloud=no \
	store_kit=no \
	game_center=no -j9
lipo -create bin/libgodot.iphone.opt.debug.arm.a bin/libgodot.iphone.opt.debug.arm64.a -output bin/wls_iphone.release_debug.3.1.a
chmod +x bin/wls_iphone.release_debug.3.1.a
# cp bin/iphone.release_debug.3.1.a ../runner_xcode/the_lost_post.a
