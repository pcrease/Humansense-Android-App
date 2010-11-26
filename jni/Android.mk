# Copyright (C) 2009 The Android Open Source Project
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
# Build control file for Bionic's test programs
# define the BIONIC_TESTS environment variable to build the test programs
#

JNI_DIR := $(call my-dir)
LOCAL_PATH := $(JNI_DIR)

include $(CLEAR_VARS)


include $(call all-makefiles-under,$(LOCAL_PATH))
#include $(call all-subdir-makefiles)

LOCAL_PATH := $(JNI_DIR)

LOCAL_MODULE    := libhumansense
LOCAL_SRC_FILES := \
	BuildTree.cpp \
	Classifier.cpp \
	ClassifyTrajectory.cpp \
	jni_api.cpp \
	TDEModel.cpp \
	Utils.cpp

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/ANN
#	/diskless/local_space/jfrank8/android-master/hardware/libhardware/include \
#	/diskless/local_space/jfrank8/android-master/system/core/include \
#	/diskless/local_space/jfrank8/android-master/dalvik/libnativehelper/include \
#	/diskless/local_space/jfrank8/android-master/frameworks/base/include

LOCAL_LDLIBS += -lhardware -lcutils -L$(LOCAL_PATH)/../libs

LOCAL_STATIC_LIBRARIES := libANN libcxcore

include $(BUILD_SHARED_LIBRARY)