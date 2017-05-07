#!/usr/bin/make
# Makefile generated by XPJ for linux-arm32

CROSS_COMPILER_ROOT = $(if $(ARM_COMPILER_ROOT),$(ARM_COMPILER_ROOT),/usr/bin)
CROSS_COMPILER_PREFIX = $(if $(ARM_COMPILER_PREFIX),$(ARM_COMPILER_PREFIX),arm-linux-gnueabihf-)
#default defines
OBJS_DIR  = build
RMDIR     = rm -fr
ECHO      = echo
CCLD      = $(CROSS_COMPILER_ROOT)/$(CROSS_COMPILER_PREFIX)g++
CXX       = $(CROSS_COMPILER_ROOT)/$(CROSS_COMPILER_PREFIX)g++
CC        = $(CROSS_COMPILER_ROOT)/$(CROSS_COMPILER_PREFIX)gcc
RANLIB    = $(CROSS_COMPILER_ROOT)/$(CROSS_COMPILER_PREFIX)ranlib
AR		 = $(CROSS_COMPILER_ROOT)/$(CROSS_COMPILER_PREFIX)ar
STRIP     = $(CROSS_COMPILER_ROOT)/$(CROSS_COMPILER_PREFIX)strip
OBJDUMP   = $(CROSS_COMPILER_ROOT)/$(CROSS_COMPILER_PREFIX)objdump
OBJCOPY   = $(CROSS_COMPILER_ROOT)/$(CROSS_COMPILER_PREFIX)objcopy
-include Makedefs.linux-arm32.mk

all: debug release 

debug: build_import_NvAppBase_debug build_import_NvModel_debug build_import_NvGLUtils_debug build_import_NvGamepad_debug build_import_NvAssetLoader_debug build_import_NvUI_debug build_import_Half_debug build_import_R3_debug build_import_WeightedBlendedOIT_debug 

release: build_import_NvAppBase_release build_import_NvModel_release build_import_NvGLUtils_release build_import_NvGamepad_release build_import_NvAssetLoader_release build_import_NvUI_release build_import_Half_release build_import_R3_release build_import_WeightedBlendedOIT_release 

clean: clean_import_NvAppBase_debug clean_import_NvAppBase_release clean_import_NvModel_debug clean_import_NvModel_release clean_import_NvGLUtils_debug clean_import_NvGLUtils_release clean_import_NvGamepad_debug clean_import_NvGamepad_release clean_import_NvAssetLoader_debug clean_import_NvAssetLoader_release clean_import_NvUI_debug clean_import_NvUI_release clean_import_Half_debug clean_import_Half_release clean_import_R3_debug clean_import_R3_release clean_import_WeightedBlendedOIT_debug clean_import_WeightedBlendedOIT_release 

include Makefile.WeightedBlendedOIT.mk


build_import_NvAppBase_debug:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvAppBase.xpj.NvAppBase.Makefile build_NvAppBase_debug

clean_import_NvAppBase_debug:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvAppBase.xpj.NvAppBase.Makefile clean_NvAppBase_debug

build_import_NvAppBase_release:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvAppBase.xpj.NvAppBase.Makefile build_NvAppBase_release

clean_import_NvAppBase_release:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvAppBase.xpj.NvAppBase.Makefile clean_NvAppBase_release

build_import_NvModel_debug:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvModel.xpj.NvModel.Makefile build_NvModel_debug

clean_import_NvModel_debug:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvModel.xpj.NvModel.Makefile clean_NvModel_debug

build_import_NvModel_release:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvModel.xpj.NvModel.Makefile build_NvModel_release

clean_import_NvModel_release:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvModel.xpj.NvModel.Makefile clean_NvModel_release

build_import_NvGLUtils_debug:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvGLUtils.xpj.NvGLUtils.Makefile build_NvGLUtils_debug

clean_import_NvGLUtils_debug:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvGLUtils.xpj.NvGLUtils.Makefile clean_NvGLUtils_debug

build_import_NvGLUtils_release:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvGLUtils.xpj.NvGLUtils.Makefile build_NvGLUtils_release

clean_import_NvGLUtils_release:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvGLUtils.xpj.NvGLUtils.Makefile clean_NvGLUtils_release

build_import_NvGamepad_debug:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvGamepad.xpj.NvGamepad.Makefile build_NvGamepad_debug

clean_import_NvGamepad_debug:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvGamepad.xpj.NvGamepad.Makefile clean_NvGamepad_debug

build_import_NvGamepad_release:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvGamepad.xpj.NvGamepad.Makefile build_NvGamepad_release

clean_import_NvGamepad_release:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvGamepad.xpj.NvGamepad.Makefile clean_NvGamepad_release

build_import_NvAssetLoader_debug:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvAssetLoader.xpj.NvAssetLoader.Makefile build_NvAssetLoader_debug

clean_import_NvAssetLoader_debug:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvAssetLoader.xpj.NvAssetLoader.Makefile clean_NvAssetLoader_debug

build_import_NvAssetLoader_release:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvAssetLoader.xpj.NvAssetLoader.Makefile build_NvAssetLoader_release

clean_import_NvAssetLoader_release:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvAssetLoader.xpj.NvAssetLoader.Makefile clean_NvAssetLoader_release

build_import_NvUI_debug:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvUI.xpj.NvUI.Makefile build_NvUI_debug

clean_import_NvUI_debug:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvUI.xpj.NvUI.Makefile clean_NvUI_debug

build_import_NvUI_release:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvUI.xpj.NvUI.Makefile build_NvUI_release

clean_import_NvUI_release:
	$(MAKE) -C ./../../../extensions/build/linux-arm32 -f NvUI.xpj.NvUI.Makefile clean_NvUI_release

build_import_Half_debug:
	$(MAKE) -C ./../../../extensions/externals/build/linux-arm32 -f Half.xpj.Half.Makefile build_Half_debug

clean_import_Half_debug:
	$(MAKE) -C ./../../../extensions/externals/build/linux-arm32 -f Half.xpj.Half.Makefile clean_Half_debug

build_import_Half_release:
	$(MAKE) -C ./../../../extensions/externals/build/linux-arm32 -f Half.xpj.Half.Makefile build_Half_release

clean_import_Half_release:
	$(MAKE) -C ./../../../extensions/externals/build/linux-arm32 -f Half.xpj.Half.Makefile clean_Half_release

build_import_R3_debug:
	$(MAKE) -C ./../../../extensions/externals/build/linux-arm32 -f R3.xpj.R3.Makefile build_R3_debug

clean_import_R3_debug:
	$(MAKE) -C ./../../../extensions/externals/build/linux-arm32 -f R3.xpj.R3.Makefile clean_R3_debug

build_import_R3_release:
	$(MAKE) -C ./../../../extensions/externals/build/linux-arm32 -f R3.xpj.R3.Makefile build_R3_release

clean_import_R3_release:
	$(MAKE) -C ./../../../extensions/externals/build/linux-arm32 -f R3.xpj.R3.Makefile clean_R3_release



