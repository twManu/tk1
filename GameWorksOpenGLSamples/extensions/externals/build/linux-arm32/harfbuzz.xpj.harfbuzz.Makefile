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

debug: build_import_harfbuzz_debug 

release: build_import_harfbuzz_release 

clean: clean_import_harfbuzz_debug clean_import_harfbuzz_release 

include Makefile.harfbuzz.mk




