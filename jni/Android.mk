LOCAL_PATH := $(call my-dir)  
include $(CLEAR_VARS)

LOCAL_MODULE    := libzip2
LOCAL_SRC_FILES := $(wildcard $(LOCAL_PATH)/*.cpp) \
					$(wildcard $(LOCAL_PATH)/extlibs/lzma/unix/*.c) \
					$(wildcard $(LOCAL_PATH)/extlibs/bzip2/*.c) \
					$(wildcard $(LOCAL_PATH)/detail/*.cpp)

LOCAL_CPPFLAGS += -fexceptions -std=c++11

include $(BUILD_STATIC_LIBRARY)
