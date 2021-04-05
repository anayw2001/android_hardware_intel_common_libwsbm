ifeq ($(ENABLE_IMG_GRAPHICS),true)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES:=          \
   wsbm_driver.c           \
   wsbm_fencemgr.c         \
   wsbm_mallocpool.c       \
   wsbm_manager.c          \
   wsbm_mm.c           \
   wsbm_slabpool.c         \
   wsbm_ttmpool.c          \
   wsbm_userpool.c

LOCAL_CFLAGS += -DHAVE_CONFIG_H
LOCAL_CFLAGS += -Wall -Werror
LOCAL_C_INCLUDES :=            \
   $(LOCAL_PATH)/../       \
   $(TARGET_OUT_HEADERS)/drm \
   $(TARGET_OUT_HEADERS)/ipp \
   $(TARGET_OUT_HEADERS)/libdrm \
   $(TARGET_OUT_HEADERS)/libdrm/shared-core \
   $(TARGET_OUT_HEADERS)/libttm

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:= libwsbm
LOCAL_SHARED_LIBRARIES:= libdrm
LOCAL_EXPORT_HEADER_LIBRARY_HEADERS := intel_libwsbm_headers
include $(BUILD_SHARED_LIBRARY)

endif # ($(ENABLE_IMG_GRAPHICS),true)

