LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := egl.c
LOCAL_CFLAGS := -Wall -Werror
LOCAL_LDFLAGS := -L $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_VENDOR)/lib/libIMGegl_SGX540_120.so
LOCAL_LDFLAGS += -lIMGegl_SGX540_120
LOCAL_MODULE := libEGL_POWERVR_SGX54X

LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/egl
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
