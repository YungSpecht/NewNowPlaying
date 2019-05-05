export ARCHS = armv7 arm64 arm64e

include $(THEOS)/makefiles/common.m

TWEAK_NAME = NewNowPlaying
NewNowPlaying_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 com.spotify.client"
