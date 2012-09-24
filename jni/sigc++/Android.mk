LOCAL_PATH:=$(call my-dir)
include $(CLEAR_VARS)

common_SRC_FILES := \
	signal.cc \
	signal_base.cc \
	connection.cc \
	trackable.cc \
	functors/slot_base.cc \
	functors/slot.cc \
	adaptors/lambda/lambda.cc

common_CC_INCLUDES := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/functors \
	$(LOCAL_PATH)/adaptors \
	$(LOCAL_PATH)/adaptors/lamda \
	$(LOCAL_PATH)/..

include $(CLEAR_VARS)

LOCAL_CPP_EXTENSION := .cc
LOCAL_SRC_FILES := $(common_SRC_FILES)
LOCAL_CC_INCLUDES += $(common_CC_INCLUDES)
LOCAL_SHARED_LIBRARIES += $(common_SHARED_LIBRARIES)
LOCAL_CFLAGS += -fvisibility=hidden

LOCAL_MODULE:=libsigc++

include $(BUILD_SHARED_LIBRARY)

