define Device/dlink_dap-2310-a1
  SOC := ar7242
  DEVICE_VENDOR := D-Link
  DEVICE_MODEL := DAP-2310
  DEVICE_VARIANT := rev. A1
  IMAGE_SIZE := 16128k
  SUPPORTED_DEVICES := dlink,dap-2310-a1
  KERNEL := kernel-bin | append-dtb | lzma | uImage lzma
  IMAGES := sysupgrade.bin
  IMAGE/sysupgrade.bin := append-kernel | append-rootfs | pad-rootfs | check-size | append-metadata
  DEVICE_PACKAGES := kmod-ath9k
endef
TARGET_DEVICES += dlink_dap-2310-a1
