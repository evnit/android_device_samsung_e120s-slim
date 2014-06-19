# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit device configuration
$(call inherit-product, device/samsung/e120s/full_e120s.mk)

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Release name
PRODUCT_RELEASE_NAME := e120s

# Device identifier
PRODUCT_NAME := slim_e120s
PRODUCT_DEVICE := e120s

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SHV-E120S TARGET_DEVICE=SHV-E120S BUILD_FINGERPRINT="samsung/SHV-E120S/SHV-E120S:4.4.2/KOT49H/KSLL6:user/release-keys" PRIVATE_BUILD_DESC="SHV-E120S-user 4.4.2 KOT49H KSLL6 release-keys"
