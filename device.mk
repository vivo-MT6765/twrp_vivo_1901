#
# Copyright (C) 2022 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# MT6762 Init
V6765_USES_SPECIFIC_INIT := true

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/recovery/root/init.recovery.mt6765.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.mt6762.rc

# Crypto
V6765_INCLUDE_CRYPTO := true

# Inherit from mithorium-common
$(call inherit-product, device/vivo/V6765-common/V6765.mk)

# Additional Libraries
TARGET_RECOVERY_DEVICE_MODULES += \
	libkeymaster3device \
	libpuresoftkeymasterdevice

RECOVERY_LIBRARY_SOURCE_FILES += \
	$(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster3device.so \
	$(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)