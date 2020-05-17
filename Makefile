INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SliderChanger

SliderChanger_FILES = Tweak.x
SliderChanger_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += sliderchangerprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
