TARGET := iphone:clang:latest:14.0
ARCHS := arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = HuyGhepTran

HuyGhepTran_FILES = Tweak.mm
HuyGhepTran_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
