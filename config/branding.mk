# Set all versions
CUSTOM_BUILD_TYPE ?= Beta
CUSTOM_BUILD_DATE := $(shell date +%Y%m%d)
CUSTOM_PLATFORM_VERSION := 9.0
STATS_TYPE := 0

TARGET_PRODUCT_SHORT := $(subst aosp_,,$(CUSTOM_BUILD))

ifeq ($(IS_GO_VERSION), true)
CUSTOM_VERSION := RevolutionOS_go_$(CUSTOM_BUILD)-$(CUSTOM_PLATFORM_VERSION)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)
ROM_FINGERPRINT := RevolutionOS_go/$(CUSTOM_PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(CUSTOM_BUILD_DATE)
else
CUSTOM_VERSION := RevolutionOS_$(CUSTOM_BUILD)-$(CUSTOM_PLATFORM_VERSION)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)
ROM_FINGERPRINT := RevolutionOS/$(CUSTOM_PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(CUSTOM_BUILD_DATE)
endif

# Stats
ifeq ($(CUSTOM_BUILD_TYPE), Beta)
STATS_TYPE := http://stats.revtechs.me/aosp/betas/
else
STATS_TYPE := http://stats.revtechs.me/aosp/
endif

CUSTOM_PROPERTIES := \
    ros.revolution.version=$(CUSTOM_VERSION) \
    ros.revolution.build_date=$(CUSTOM_BUILD_DATE) \
    ros.revolution.build_type=$(CUSTOM_BUILD_TYPE) \
    ros.revolution.fingerprint=$(ROM_FINGERPRINT) \
    ro.romstats.url=$(STATS_TYPE) \
    ro.romstats.version=$(CUSTOM_BUILD_DATE) \
    ro.romstats.name=RevolutionOS-AOSP \
    ro.romstats.tframe=1 \
    ro.romstats.askfirst=0 \
    ro.romstats.ga=UA-0000000-0

