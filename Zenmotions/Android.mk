#
# Copyright (C) 2014 SlimRoms Project
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
#

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)


LOCAL_MODULE_TAGS := optional
LOCAL_STATIC_ANDROID_LIBRARIES := \
    android-support-v14-preference \
    android-support-v13 \
    android-support-v7-appcompat \
    android-support-v7-palette \
    android-support-v7-preference \
    android-support-v7-recyclerview \
    android-support-v4


LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_PACKAGE_NAME := Zenmotions
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true

LOCAL_RESOURCE_DIR := \
    $(LOCAL_PATH)/res \
    $(TOP)/packages/resources/devicesettings/res

LOCAL_USE_AAPT2 := true



LOCAL_PROGUARD_ENABLED := disabled
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_PATH := $(TARGET_OUT)/app
LOCAL_PRIVATE_PLATFORM_APIS := true

include frameworks/base/packages/SettingsLib/common.mk

include $(BUILD_PACKAGE)

include $(call all-makefiles-under,$(LOCAL_PATH))
