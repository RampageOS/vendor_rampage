include vendor/rampage/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/rampage/config/BoardConfigQcom.mk
endif

# Custom AVB Key
ifeq ($(EXTENDED_BUILD_TYPE), OFFICIAL)
ifeq ($(TARGET_USES_CUSTOM_AVB_KEY),true)
include vendor/rampage/config/BoardConfigAvb.mk
endif
endif

include vendor/rampage/config/BoardConfigSoong.mk
