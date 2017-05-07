# Makefile generated by XPJ for android
-include Makefile.custom
ProjectName = ConservativeRaster
ConservativeRaster_cppfiles   += ./../../gl4-maxwell/ConservativeRaster/ConservativeRaster.cpp

ConservativeRaster_cpp_debug_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.debug.P, $(ConservativeRaster_cppfiles)))))
ConservativeRaster_cc_debug_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.debug.P, $(ConservativeRaster_ccfiles)))))
ConservativeRaster_c_debug_dep      = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.debug.P, $(ConservativeRaster_cfiles)))))
ConservativeRaster_debug_dep      = $(ConservativeRaster_cpp_debug_dep) $(ConservativeRaster_cc_debug_dep) $(ConservativeRaster_c_debug_dep)
-include $(ConservativeRaster_debug_dep)
ConservativeRaster_cpp_release_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.release.P, $(ConservativeRaster_cppfiles)))))
ConservativeRaster_cc_release_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.release.P, $(ConservativeRaster_ccfiles)))))
ConservativeRaster_c_release_dep      = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.release.P, $(ConservativeRaster_cfiles)))))
ConservativeRaster_release_dep      = $(ConservativeRaster_cpp_release_dep) $(ConservativeRaster_cc_release_dep) $(ConservativeRaster_c_release_dep)
-include $(ConservativeRaster_release_dep)
ConservativeRaster_debug_hpaths    := 
ConservativeRaster_debug_hpaths    += ./../../gl4-maxwell/ConservativeRaster
ConservativeRaster_debug_hpaths    += ./../../../extensions/include
ConservativeRaster_debug_hpaths    += ./../../../extensions/externals/include
ConservativeRaster_debug_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/platforms/android-18/arch-arm/usr/include
ConservativeRaster_debug_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/sources/cxx-stl/gnu-libstdc++/4.8/include
ConservativeRaster_debug_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi-v7a/include
ConservativeRaster_debug_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/sources/cxx-stl/gnu-libstdc++/4.8/include/backward
ConservativeRaster_debug_lpaths    := 
ConservativeRaster_debug_lpaths    += ./../../../extensions/externals/lib/Tegra-Android
ConservativeRaster_debug_lpaths    += ./../../../extensions/lib/Tegra-Android
ConservativeRaster_debug_lpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi-v7a
ConservativeRaster_debug_lpaths    += ./../../../extensions/externals/lib/Tegra-Android
ConservativeRaster_debug_lpaths    += ./../../../extensions/lib/Tegra-Android
ConservativeRaster_debug_defines   := $(ConservativeRaster_custom_defines)
ConservativeRaster_debug_defines   += android
ConservativeRaster_debug_defines   += ANDROID
ConservativeRaster_debug_defines   += GL_API_LEVEL_ES2
ConservativeRaster_debug_defines   += USE_REGAL=1
ConservativeRaster_debug_defines   += _DEBUG
ConservativeRaster_debug_libraries := 
ConservativeRaster_debug_libraries += gnustl_static
ConservativeRaster_debug_libraries += EGL
ConservativeRaster_debug_libraries += android
ConservativeRaster_debug_libraries += m
ConservativeRaster_debug_libraries += c
ConservativeRaster_debug_libraries += supc++
ConservativeRaster_debug_libraries += GLESv2
ConservativeRaster_debug_libraries += log
ConservativeRaster_debug_libraries += gcc
ConservativeRaster_debug_libraries += RegalW_static
ConservativeRaster_debug_libraries += HalfD
ConservativeRaster_debug_libraries += NvAppBaseD
ConservativeRaster_debug_libraries += NvAssetLoaderD
ConservativeRaster_debug_libraries += NvEGLUtilD
ConservativeRaster_debug_libraries += NvGamepadD
ConservativeRaster_debug_libraries += NvGLUtilsD
ConservativeRaster_debug_libraries += NvModelD
ConservativeRaster_debug_libraries += NvUID
ConservativeRaster_debug_common_cflags	:= $(ConservativeRaster_custom_cflags)
ConservativeRaster_debug_common_cflags    += -MMD
ConservativeRaster_debug_common_cflags    += $(addprefix -D, $(ConservativeRaster_debug_defines))
ConservativeRaster_debug_common_cflags    += $(addprefix -I, $(ConservativeRaster_debug_hpaths))
ConservativeRaster_debug_cflags	:= $(ConservativeRaster_debug_common_cflags)
ConservativeRaster_debug_cflags  += -fpic -fPIC -ffunction-sections -funwind-tables -fstack-protector -no-canonical-prefixes -march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3-d16 -fstrict-aliasing -funswitch-loops -finline-limit=300
ConservativeRaster_debug_cflags  += -funwind-tables -O0 -g -ggdb -fno-omit-frame-pointer
ConservativeRaster_debug_cppflags	:= $(ConservativeRaster_debug_common_cflags)
ConservativeRaster_debug_cppflags  += -fpic -fPIC -ffunction-sections -funwind-tables -fstack-protector -no-canonical-prefixes -march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3-d16 -fstrict-aliasing -funswitch-loops -finline-limit=300
ConservativeRaster_debug_cppflags  += -funwind-tables -O0 -g -ggdb -fno-omit-frame-pointer
ConservativeRaster_debug_lflags    := $(ConservativeRaster_custom_lflags)
ConservativeRaster_debug_lflags    += $(addprefix -L, $(ConservativeRaster_debug_lpaths))
ConservativeRaster_debug_lflags    += -Wl,--start-group $(addprefix -l, $(ConservativeRaster_debug_libraries)) -Wl,--end-group
ConservativeRaster_debug_lflags  += --sysroot=$(NDKROOT)/platforms/android-18/arch-arm -shared -Wl,--no-undefined
ConservativeRaster_debug_objsdir  = $(OBJS_DIR)/ConservativeRaster_debug
ConservativeRaster_debug_cpp_o    = $(addprefix $(ConservativeRaster_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(ConservativeRaster_cppfiles)))))
ConservativeRaster_debug_cc_o    = $(addprefix $(ConservativeRaster_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.o, $(ConservativeRaster_ccfiles)))))
ConservativeRaster_debug_c_o      = $(addprefix $(ConservativeRaster_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(ConservativeRaster_cfiles)))))
ConservativeRaster_debug_obj      = $(ConservativeRaster_debug_cpp_o) $(ConservativeRaster_debug_cc_o) $(ConservativeRaster_debug_c_o)
ConservativeRaster_debug_bin      := ./../../gl4-maxwell/ConservativeRaster/libs/armeabi-v7a/libConservativeRaster.so

clean_ConservativeRaster_debug: 
	$(ECHO) clean ConservativeRaster debug
	$(RMDIR) $(ConservativeRaster_debug_objsdir)
	$(RMDIR) $(ConservativeRaster_debug_bin)

build_ConservativeRaster_debug: postbuild_ConservativeRaster_debug
postbuild_ConservativeRaster_debug: mainbuild_ConservativeRaster_debug preantbuild_ConservativeRaster_debug antbuild_ConservativeRaster_debug
preantbuild_ConservativeRaster_debug: mainbuild_ConservativeRaster_debug
antbuild_ConservativeRaster_debug: preantbuild_ConservativeRaster_debug
	cd ./../../gl4-maxwell/ConservativeRaster; dos2unix $(ANT_TOOL); JAVA_HOME=$(JAVA_HOME) $(ANT_TOOL) debug
mainbuild_ConservativeRaster_debug: prebuild_ConservativeRaster_debug $(ConservativeRaster_debug_bin)
prebuild_ConservativeRaster_debug:

$(ConservativeRaster_debug_bin): $(ConservativeRaster_debug_obj) build_Half_debug build_NvAppBase_debug build_NvAssetLoader_debug build_NvEGLUtil_debug build_NvGamepad_debug build_NvGLUtils_debug build_NvModel_debug build_NvUI_debug 
	mkdir -p `dirname ./../../gl4-maxwell/ConservativeRaster/libs/armeabi-v7a/libConservativeRaster.so`
	$(CXX) -shared $(ConservativeRaster_debug_obj) $(ConservativeRaster_debug_lflags) -lc -o $@ 
	$(ECHO) building $@ complete!

ConservativeRaster_debug_DEPDIR = $(dir $(@))/$(*F)
$(ConservativeRaster_debug_cpp_o): $(ConservativeRaster_debug_objsdir)/%.o:
	$(ECHO) ConservativeRaster: compiling debug $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(ConservativeRaster_debug_objsdir),, $@))), $(ConservativeRaster_cppfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(ConservativeRaster_debug_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(ConservativeRaster_debug_objsdir),, $@))), $(ConservativeRaster_cppfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(ConservativeRaster_debug_objsdir),, $@))), $(ConservativeRaster_cppfiles))))))
	cp $(ConservativeRaster_debug_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(ConservativeRaster_debug_objsdir),, $@))), $(ConservativeRaster_cppfiles))))).debug.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(ConservativeRaster_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(ConservativeRaster_debug_objsdir),, $@))), $(ConservativeRaster_cppfiles))))).debug.P; \
	  rm -f $(ConservativeRaster_debug_DEPDIR).d

$(ConservativeRaster_debug_cc_o): $(ConservativeRaster_debug_objsdir)/%.o:
	$(ECHO) ConservativeRaster: compiling debug $(filter %$(strip $(subst .cc.o,.cc, $(subst $(ConservativeRaster_debug_objsdir),, $@))), $(ConservativeRaster_ccfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(ConservativeRaster_debug_cppflags) -c $(filter %$(strip $(subst .cc.o,.cc, $(subst $(ConservativeRaster_debug_objsdir),, $@))), $(ConservativeRaster_ccfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(ConservativeRaster_debug_objsdir),, $@))), $(ConservativeRaster_ccfiles))))))
	cp $(ConservativeRaster_debug_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(ConservativeRaster_debug_objsdir),, $@))), $(ConservativeRaster_ccfiles))))).debug.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(ConservativeRaster_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(ConservativeRaster_debug_objsdir),, $@))), $(ConservativeRaster_ccfiles))))).debug.P; \
	  rm -f $(ConservativeRaster_debug_DEPDIR).d

$(ConservativeRaster_debug_c_o): $(ConservativeRaster_debug_objsdir)/%.o:
	$(ECHO) ConservativeRaster: compiling debug $(filter %$(strip $(subst .c.o,.c, $(subst $(ConservativeRaster_debug_objsdir),, $@))), $(ConservativeRaster_cfiles))...
	mkdir -p $(dir $(@))
	$(CC) $(ConservativeRaster_debug_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(ConservativeRaster_debug_objsdir),, $@))), $(ConservativeRaster_cfiles)) -o $@ 
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(ConservativeRaster_debug_objsdir),, $@))), $(ConservativeRaster_cfiles))))))
	cp $(ConservativeRaster_debug_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(ConservativeRaster_debug_objsdir),, $@))), $(ConservativeRaster_cfiles))))).debug.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(ConservativeRaster_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(ConservativeRaster_debug_objsdir),, $@))), $(ConservativeRaster_cfiles))))).debug.P; \
	  rm -f $(ConservativeRaster_debug_DEPDIR).d

ConservativeRaster_release_hpaths    := 
ConservativeRaster_release_hpaths    += ./../../gl4-maxwell/ConservativeRaster
ConservativeRaster_release_hpaths    += ./../../../extensions/include
ConservativeRaster_release_hpaths    += ./../../../extensions/externals/include
ConservativeRaster_release_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/platforms/android-18/arch-arm/usr/include
ConservativeRaster_release_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/sources/cxx-stl/gnu-libstdc++/4.8/include
ConservativeRaster_release_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi-v7a/include
ConservativeRaster_release_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/sources/cxx-stl/gnu-libstdc++/4.8/include/backward
ConservativeRaster_release_lpaths    := 
ConservativeRaster_release_lpaths    += ./../../../extensions/externals/lib/Tegra-Android
ConservativeRaster_release_lpaths    += ./../../../extensions/lib/Tegra-Android
ConservativeRaster_release_lpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi-v7a
ConservativeRaster_release_lpaths    += ./../../../extensions/externals/lib/Tegra-Android
ConservativeRaster_release_lpaths    += ./../../../extensions/lib/Tegra-Android
ConservativeRaster_release_defines   := $(ConservativeRaster_custom_defines)
ConservativeRaster_release_defines   += android
ConservativeRaster_release_defines   += ANDROID
ConservativeRaster_release_defines   += GL_API_LEVEL_ES2
ConservativeRaster_release_defines   += USE_REGAL=1
ConservativeRaster_release_defines   += NDEBUG
ConservativeRaster_release_libraries := 
ConservativeRaster_release_libraries += gnustl_static
ConservativeRaster_release_libraries += EGL
ConservativeRaster_release_libraries += android
ConservativeRaster_release_libraries += m
ConservativeRaster_release_libraries += c
ConservativeRaster_release_libraries += supc++
ConservativeRaster_release_libraries += GLESv2
ConservativeRaster_release_libraries += log
ConservativeRaster_release_libraries += gcc
ConservativeRaster_release_libraries += RegalW_static
ConservativeRaster_release_libraries += Half
ConservativeRaster_release_libraries += NvAppBase
ConservativeRaster_release_libraries += NvAssetLoader
ConservativeRaster_release_libraries += NvEGLUtil
ConservativeRaster_release_libraries += NvGamepad
ConservativeRaster_release_libraries += NvGLUtils
ConservativeRaster_release_libraries += NvModel
ConservativeRaster_release_libraries += NvUI
ConservativeRaster_release_common_cflags	:= $(ConservativeRaster_custom_cflags)
ConservativeRaster_release_common_cflags    += -MMD
ConservativeRaster_release_common_cflags    += $(addprefix -D, $(ConservativeRaster_release_defines))
ConservativeRaster_release_common_cflags    += $(addprefix -I, $(ConservativeRaster_release_hpaths))
ConservativeRaster_release_cflags	:= $(ConservativeRaster_release_common_cflags)
ConservativeRaster_release_cflags  += -fpic -fPIC -ffunction-sections -funwind-tables -fstack-protector -no-canonical-prefixes -march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3-d16 -fstrict-aliasing -funswitch-loops -finline-limit=300
ConservativeRaster_release_cflags  += -funwind-tables -O2 -fno-omit-frame-pointer
ConservativeRaster_release_cppflags	:= $(ConservativeRaster_release_common_cflags)
ConservativeRaster_release_cppflags  += -fpic -fPIC -ffunction-sections -funwind-tables -fstack-protector -no-canonical-prefixes -march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3-d16 -fstrict-aliasing -funswitch-loops -finline-limit=300
ConservativeRaster_release_cppflags  += -funwind-tables -O2 -fno-omit-frame-pointer
ConservativeRaster_release_lflags    := $(ConservativeRaster_custom_lflags)
ConservativeRaster_release_lflags    += $(addprefix -L, $(ConservativeRaster_release_lpaths))
ConservativeRaster_release_lflags    += -Wl,--start-group $(addprefix -l, $(ConservativeRaster_release_libraries)) -Wl,--end-group
ConservativeRaster_release_lflags  += --sysroot=$(NDKROOT)/platforms/android-18/arch-arm -shared -Wl,--no-undefined
ConservativeRaster_release_objsdir  = $(OBJS_DIR)/ConservativeRaster_release
ConservativeRaster_release_cpp_o    = $(addprefix $(ConservativeRaster_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(ConservativeRaster_cppfiles)))))
ConservativeRaster_release_cc_o    = $(addprefix $(ConservativeRaster_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.o, $(ConservativeRaster_ccfiles)))))
ConservativeRaster_release_c_o      = $(addprefix $(ConservativeRaster_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(ConservativeRaster_cfiles)))))
ConservativeRaster_release_obj      = $(ConservativeRaster_release_cpp_o) $(ConservativeRaster_release_cc_o) $(ConservativeRaster_release_c_o)
ConservativeRaster_release_bin      := ./../../gl4-maxwell/ConservativeRaster/libs/armeabi-v7a/libConservativeRaster.so

clean_ConservativeRaster_release: 
	$(ECHO) clean ConservativeRaster release
	$(RMDIR) $(ConservativeRaster_release_objsdir)
	$(RMDIR) $(ConservativeRaster_release_bin)

build_ConservativeRaster_release: postbuild_ConservativeRaster_release
postbuild_ConservativeRaster_release: mainbuild_ConservativeRaster_release preantbuild_ConservativeRaster_release antbuild_ConservativeRaster_release
preantbuild_ConservativeRaster_release: mainbuild_ConservativeRaster_release
antbuild_ConservativeRaster_release: preantbuild_ConservativeRaster_release
	cd ./../../gl4-maxwell/ConservativeRaster; dos2unix $(ANT_TOOL); JAVA_HOME=$(JAVA_HOME) $(ANT_TOOL) debug
mainbuild_ConservativeRaster_release: prebuild_ConservativeRaster_release $(ConservativeRaster_release_bin)
prebuild_ConservativeRaster_release:

$(ConservativeRaster_release_bin): $(ConservativeRaster_release_obj) build_Half_release build_NvAppBase_release build_NvAssetLoader_release build_NvEGLUtil_release build_NvGamepad_release build_NvGLUtils_release build_NvModel_release build_NvUI_release 
	mkdir -p `dirname ./../../gl4-maxwell/ConservativeRaster/libs/armeabi-v7a/libConservativeRaster.so`
	$(CXX) -shared $(ConservativeRaster_release_obj) $(ConservativeRaster_release_lflags) -lc -o $@ 
	$(ECHO) building $@ complete!

ConservativeRaster_release_DEPDIR = $(dir $(@))/$(*F)
$(ConservativeRaster_release_cpp_o): $(ConservativeRaster_release_objsdir)/%.o:
	$(ECHO) ConservativeRaster: compiling release $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(ConservativeRaster_release_objsdir),, $@))), $(ConservativeRaster_cppfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(ConservativeRaster_release_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(ConservativeRaster_release_objsdir),, $@))), $(ConservativeRaster_cppfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(ConservativeRaster_release_objsdir),, $@))), $(ConservativeRaster_cppfiles))))))
	cp $(ConservativeRaster_release_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(ConservativeRaster_release_objsdir),, $@))), $(ConservativeRaster_cppfiles))))).release.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(ConservativeRaster_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(ConservativeRaster_release_objsdir),, $@))), $(ConservativeRaster_cppfiles))))).release.P; \
	  rm -f $(ConservativeRaster_release_DEPDIR).d

$(ConservativeRaster_release_cc_o): $(ConservativeRaster_release_objsdir)/%.o:
	$(ECHO) ConservativeRaster: compiling release $(filter %$(strip $(subst .cc.o,.cc, $(subst $(ConservativeRaster_release_objsdir),, $@))), $(ConservativeRaster_ccfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(ConservativeRaster_release_cppflags) -c $(filter %$(strip $(subst .cc.o,.cc, $(subst $(ConservativeRaster_release_objsdir),, $@))), $(ConservativeRaster_ccfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(ConservativeRaster_release_objsdir),, $@))), $(ConservativeRaster_ccfiles))))))
	cp $(ConservativeRaster_release_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(ConservativeRaster_release_objsdir),, $@))), $(ConservativeRaster_ccfiles))))).release.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(ConservativeRaster_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(ConservativeRaster_release_objsdir),, $@))), $(ConservativeRaster_ccfiles))))).release.P; \
	  rm -f $(ConservativeRaster_release_DEPDIR).d

$(ConservativeRaster_release_c_o): $(ConservativeRaster_release_objsdir)/%.o:
	$(ECHO) ConservativeRaster: compiling release $(filter %$(strip $(subst .c.o,.c, $(subst $(ConservativeRaster_release_objsdir),, $@))), $(ConservativeRaster_cfiles))...
	mkdir -p $(dir $(@))
	$(CC) $(ConservativeRaster_release_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(ConservativeRaster_release_objsdir),, $@))), $(ConservativeRaster_cfiles)) -o $@ 
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(ConservativeRaster_release_objsdir),, $@))), $(ConservativeRaster_cfiles))))))
	cp $(ConservativeRaster_release_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(ConservativeRaster_release_objsdir),, $@))), $(ConservativeRaster_cfiles))))).release.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(ConservativeRaster_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(ConservativeRaster_release_objsdir),, $@))), $(ConservativeRaster_cfiles))))).release.P; \
	  rm -f $(ConservativeRaster_release_DEPDIR).d

clean_ConservativeRaster:  clean_ConservativeRaster_debug clean_ConservativeRaster_release
	rm -rf $(DEPSDIR)

export VERBOSE
ifndef VERBOSE
.SILENT:
endif
