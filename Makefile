ARCHS = arm64 arm64e

DEBUG = 0
FINALPACKAGE = 1

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = 80Brightness

80Brightness_FILES = Tweak.xm
80Brightness_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
