LOCAL_PATH := $(call my-dir)

OLD_LOCAL_PATH := ${LOCAL_PATH}

include ${LOCAL_PATH}/libsndfile.mk

LOCAL_PATH := ${OLD_LOCAL_PATH}

include $(CLEAR_VARS)

LOCAL_LDLIBS    += -L$(SYSROOT)/usr/lib -ldl -llog
LOCAL_MODULE    := scsynth
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/server
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/plugin_interface
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/common
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/fromscau
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/libc
LOCAL_CFLAGS    += -DNO_LIBSNDFILE
LOCAL_CFLAGS    += -DSC_PLUGIN_EXT=\".so\"
# TODO SC_LINUX could be removed once we update sc base to recent trunk (later than 2010-08-17)
LOCAL_CFLAGS    += -DSC_LINUX
LOCAL_CFLAGS    += -DSC_ANDROID
# TODO there may be a good memory alignment choice for arm
LOCAL_CFLAGS    += -DSC_MEMORY_ALIGNMENT=1
LOCAL_SRC_FILES := \
    Source/server/Rendezvous.cpp \
    Source/server/Samp.cpp \
    Source/server/SC_BufGen.cpp \
    Source/server/SC_Carbon.cpp \
    Source/server/SC_ComPort.cpp \
    Source/server/SC_Complex.cpp \
    Source/server/SC_CoreAudio.cpp \
    Source/server/SC_Dimension.cpp \
    Source/server/SC_Errors.cpp \
    Source/server/SC_Graph.cpp \
    Source/server/SC_GraphDef.cpp \
    Source/server/SC_Group.cpp \
    Source/server/SC_Lib_Cintf.cpp \
    Source/server/SC_Lib.cpp \
    Source/server/SC_MiscCmds.cpp \
    Source/server/SC_Node.cpp \
    Source/server/SC_Rate.cpp \
    Source/server/SC_SequencedCommand.cpp \
    Source/server/SC_Str4.cpp \
    Source/server/SC_SyncCondition.cpp \
    Source/server/scsynth_main.cpp \
    Source/server/SC_Unit.cpp \
    Source/server/SC_UnitDef.cpp \
    Source/server/SC_World.cpp \
    Source/common/SC_Sem.cpp \
    Source/common/SC_DirUtils.cpp \
    Source/common/SC_StringParser.cpp \
    Source/common/SC_AllocPool.cpp \
    Source/libc/glob.c \
    Source/fromscau/OSCMessages.cpp \
    Source/server/SC_Android.cpp 

include $(BUILD_SHARED_LIBRARY)

######################################################
# plugins:

include $(CLEAR_VARS)
LOCAL_MODULE   := IOUGens
LOCAL_SRC_FILES := \
    Source/plugins/IOUGens.cpp
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/plugin_interface
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/common
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/server
LOCAL_CFLAGS    += -DNO_LIBSNDFILE
LOCAL_CFLAGS    += -DSC_LINUX
LOCAL_CFLAGS    += -DSC_ANDROID
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := NoiseUGens
LOCAL_SRC_FILES := \
    Source/plugins/NoiseUGens.cpp
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/plugin_interface
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/common
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/server
LOCAL_CFLAGS    += -DNO_LIBSNDFILE
LOCAL_CFLAGS    += -DSC_LINUX
LOCAL_CFLAGS    += -DSC_ANDROID
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := LFUGens
LOCAL_SRC_FILES := \
    Source/plugins/LFUGens.cpp
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/plugin_interface
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/common
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/server
LOCAL_CFLAGS    += -DNO_LIBSNDFILE
LOCAL_CFLAGS    += -DSC_LINUX
LOCAL_CFLAGS    += -DSC_ANDROID
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := OscUGens
LOCAL_SRC_FILES := \
    Source/plugins/OscUGens.cpp
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/plugin_interface
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/common
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/server
LOCAL_CFLAGS    += -DNO_LIBSNDFILE
LOCAL_CFLAGS    += -DSC_LINUX
LOCAL_CFLAGS    += -DSC_ANDROID
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := BinaryOpUGens
LOCAL_SRC_FILES := \
    Source/plugins/BinaryOpUGens.cpp
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/plugin_interface
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/common
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/server
LOCAL_CFLAGS    += -DNO_LIBSNDFILE
LOCAL_CFLAGS    += -DSC_LINUX
LOCAL_CFLAGS    += -DSC_ANDROID
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := FilterUGens
LOCAL_SRC_FILES := \
    Source/plugins/FilterUGens.cpp
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/plugin_interface
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/common
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/server
LOCAL_CFLAGS    += -DNO_LIBSNDFILE
LOCAL_CFLAGS    += -DSC_LINUX
LOCAL_CFLAGS    += -DSC_ANDROID
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := PanUGens
LOCAL_SRC_FILES := \
    Source/plugins/PanUGens.cpp
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/plugin_interface
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/common
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/server
LOCAL_CFLAGS    += -DNO_LIBSNDFILE
LOCAL_CFLAGS    += -DSC_LINUX
LOCAL_CFLAGS    += -DSC_ANDROID
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := MulAddUGens
LOCAL_SRC_FILES := \
    Source/plugins/MulAddUGens.cpp
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/plugin_interface
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/common
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/server
LOCAL_CFLAGS    += -DNO_LIBSNDFILE
LOCAL_CFLAGS    += -DSC_LINUX
LOCAL_CFLAGS    += -DSC_ANDROID
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := UnaryOpUGens
LOCAL_SRC_FILES := \
    Source/plugins/UnaryOpUGens.cpp
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/plugin_interface
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/common
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/server
LOCAL_CFLAGS    += -DNO_LIBSNDFILE
LOCAL_CFLAGS    += -DSC_LINUX
LOCAL_CFLAGS    += -DSC_ANDROID
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := TriggerUGens
LOCAL_SRC_FILES := \
    Source/plugins/TriggerUGens.cpp
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/plugin_interface
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/common
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/server
LOCAL_CFLAGS    += -DNO_LIBSNDFILE
LOCAL_CFLAGS    += -DSC_LINUX
LOCAL_CFLAGS    += -DSC_ANDROID
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := GendynUGens
LOCAL_SRC_FILES := \
    Source/plugins/GendynUGens.cpp
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/plugin_interface
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/common
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/server
LOCAL_CFLAGS    += -DNO_LIBSNDFILE
LOCAL_CFLAGS    += -DSC_LINUX
LOCAL_CFLAGS    += -DSC_ANDROID
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := ReverbUGens
LOCAL_SRC_FILES := \
    Source/plugins/ReverbUGens.cpp
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/plugin_interface
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/common
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/server
LOCAL_CFLAGS    += -DNO_LIBSNDFILE
LOCAL_CFLAGS    += -DSC_LINUX
LOCAL_CFLAGS    += -DSC_ANDROID
include $(BUILD_SHARED_LIBRARY)

#############################################################
# Now some ugens from the "sc3-plugins" extensions collection

include $(CLEAR_VARS)
LOCAL_MODULE := MCLDBufferUGens
LOCAL_SRC_FILES := \
    Source/sc3-plugins/MCLDBufferUGens.cpp
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/plugin_interface
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/common
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/server
LOCAL_CFLAGS    += -DNO_LIBSNDFILE
LOCAL_CFLAGS    += -DSC_LINUX
LOCAL_CFLAGS    += -DSC_ANDROID
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := MCLDFFTUGens
LOCAL_SRC_FILES := \
    Source/sc3-plugins/MCLDFFTUGens.cpp
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/plugin_interface
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/common
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/server
LOCAL_CFLAGS    += -DNO_LIBSNDFILE
LOCAL_CFLAGS    += -DSC_LINUX
LOCAL_CFLAGS    += -DSC_ANDROID
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := MCLDTreeUGens
LOCAL_SRC_FILES := \
    Source/sc3-plugins/MCLDTreeUGens.cpp
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/plugin_interface
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/common
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/server
LOCAL_CFLAGS    += -DNO_LIBSNDFILE
LOCAL_CFLAGS    += -DSC_LINUX
LOCAL_CFLAGS    += -DSC_ANDROID
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := MCLDTriggeredStatsUGens
LOCAL_SRC_FILES := \
    Source/sc3-plugins/MCLDTriggeredStatsUgens.cpp
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/plugin_interface
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/common
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/server
LOCAL_CFLAGS    += -DNO_LIBSNDFILE
LOCAL_CFLAGS    += -DSC_LINUX
LOCAL_CFLAGS    += -DSC_ANDROID
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := AY_UGen
LOCAL_SRC_FILES := \
    Source/sc3-plugins/AY_UGen.cpp \
    Source/sc3-plugins/AY_libayemu/src/ay8912.c
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/plugin_interface
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/common
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Headers/server
LOCAL_C_INCLUDES+= $(LOCAL_PATH)/Source/sc3-plugins/AY_libayemu/include
LOCAL_CFLAGS    += -DNO_LIBSNDFILE
LOCAL_CFLAGS    += -DSC_LINUX
LOCAL_CFLAGS    += -DSC_ANDROID
include $(BUILD_SHARED_LIBRARY)


