LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libinit_xiaomi_msm8937_headers
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/include
include $(BUILD_HEADER_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include

LOCAL_SRC_FILES := \
    libinit_dalvik_heap.cpp \
    libinit_utils.cpp \
    libinit_variant.cpp

LOCAL_WHOLE_STATIC_LIBRARIES := libbase
LOCAL_MODULE := libinit_xiaomi_msm8937
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
    system/core/init

LOCAL_SRC_FILES := init_xiaomi_msm8937.cpp
LOCAL_WHOLE_STATIC_LIBRARIES := libinit_xiaomi_msm8937
LOCAL_MODULE := init_xiaomi_msm8937
include $(BUILD_STATIC_LIBRARY)
