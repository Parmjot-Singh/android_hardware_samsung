LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

ifeq ($(BOARD_USES_FIMGAPI),true)

#LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../include
LOCAL_C_INCLUDES += external/skia/include/core
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES:= \
	FimgApi.cpp   \
	FimgExynos4.cpp

LOCAL_SHARED_LIBRARIES:= liblog libutils libbinder

LOCAL_MODULE:= libfimg

LOCAL_PRELINK_MODULE := false

include $(BUILD_SHARED_LIBRARY)

endif
