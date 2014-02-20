#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE=hero

mkdir -p ../../../device/htc/$DEVICE/vendor


(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../device/htc/$DEVICE/vendor/device_$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/htc/__DEVICE__/extract-files.sh

PRODUCT_COPY_FILES := \\
    device/htc/__DEVICE__/vendor/proprietary/libgps.so:obj/lib/libgps.so

PRODUCT_COPY_FILES += \\
    device/htc/__DEVICE__/vendor/proprietary/akmd:system/bin/akmd \\
    device/htc/__DEVICE__/vendor/proprietary/01_qcomm_omx.cfg:system/etc/01_qcomm_omx.cfg \\
    device/htc/__DEVICE__/vendor/proprietary/AudioFilter.csv:system/etc/AudioFilter.csv \\
    device/htc/__DEVICE__/vendor/proprietary/AudioPara4.csv:system/etc/AudioPara4.csv \\
    device/htc/__DEVICE__/vendor/proprietary/AudioPreProcess.csv:system/etc/AudioPreProcess.csv \\
    device/htc/__DEVICE__/vendor/proprietary/avpr.bts:system/etc/firmware/avpr.bts \\
    device/htc/__DEVICE__/vendor/proprietary/brf6300.bin:system/etc/firmware/brf6300.bin \\
    device/htc/__DEVICE__/vendor/proprietary/brf6350.bin:system/etc/firmware/brf6350.bin \\
    device/htc/__DEVICE__/vendor/proprietary/fmc_init_1273.2.bts:system/etc/firmware/fmc_init_1273.2.bts \\
    device/htc/__DEVICE__/vendor/proprietary/fm_rx_init_1273.2.bts:system/etc/firmware/fm_rx_init_1273.2.bts \\
    device/htc/__DEVICE__/vendor/proprietary/tiinit_5.3.53.bts:system/etc/firmware/tiinit_5.3.53.bts \\
    device/htc/__DEVICE__/vendor/proprietary/vac_config.ini:system/etc/firmware/vac_config.ini \\
    device/htc/__DEVICE__/vendor/proprietary/Fw1251r1c.bin:system/etc/wifi/Fw1251r1c.bin \\
    device/htc/__DEVICE__/vendor/proprietary/libGLES_qcom.so:system/lib/egl/libGLES_qcom.so \\
    device/htc/__DEVICE__/vendor/proprietary/libaudioeq.so:system/lib/libaudioeq.so \\
    device/htc/__DEVICE__/vendor/proprietary/libgps.so:system/lib/libgps.so \\
    device/htc/__DEVICE__/vendor/proprietary/libhtc_acoustic.so:system/lib/libhtc_acoustic.so \\
    device/htc/__DEVICE__/vendor/proprietary/libhtc_ril.so:system/lib/libhtc_ril.so \\
    device/htc/__DEVICE__/vendor/proprietary/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    device/htc/__DEVICE__/vendor/proprietary/liboemcamera.so:system/lib/liboemcamera.so \\
    device/htc/__DEVICE__/vendor/proprietary/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \\
    device/htc/__DEVICE__/vendor/proprietary/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \\
    device/htc/__DEVICE__/vendor/proprietary/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \\

EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/htc/$DEVICE/device_$DEVICE-vendor.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/htc/__DEVICE__/setup-makefiles.sh

# Live wallpaper packages
PRODUCT_PACKAGES := \\
    LiveWallpapersPicker \\
    librs_jni

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES := \\
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Pick up overlay for features that depend on non-open-source files
DEVICE_PACKAGE_OVERLAYS := device/htc/__DEVICE__/vendor/overlay

\$(call inherit-product, device/htc/__DEVICE__/vendor/device___DEVICE__-vendor-blobs.mk)
EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../device/htc/$DEVICE/vendor/BoardConfigVendor.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/htc/__DEVICE__/setup-makefiles.sh

BOARD_GPS_LIBRARIES := libgps librpc

USE_CAMERA_STUB := false

EOF
