# Makefile generated by XPJ for android
-include Makefile.custom
ProjectName = R3
R3_cppfiles   += ./../../src/R3/thread.cpp

R3_cpp_debug_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.debug.P, $(R3_cppfiles)))))
R3_cc_debug_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.debug.P, $(R3_ccfiles)))))
R3_c_debug_dep      = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.debug.P, $(R3_cfiles)))))
R3_debug_dep      = $(R3_cpp_debug_dep) $(R3_cc_debug_dep) $(R3_c_debug_dep)
-include $(R3_debug_dep)
R3_cpp_release_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.release.P, $(R3_cppfiles)))))
R3_cc_release_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.release.P, $(R3_ccfiles)))))
R3_c_release_dep      = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.release.P, $(R3_cfiles)))))
R3_release_dep      = $(R3_cpp_release_dep) $(R3_cc_release_dep) $(R3_c_release_dep)
-include $(R3_release_dep)
R3_debug_hpaths    := 
R3_debug_hpaths    += ./../../src/R3
R3_debug_hpaths    += ./../../include
R3_debug_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/platforms/android-14/arch-arm/usr/include
R3_debug_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/sources/cxx-stl/gnu-libstdc++/4.8/include
R3_debug_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi-v7a/include
R3_debug_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/sources/cxx-stl/gnu-libstdc++/4.8/include/backward
R3_debug_lpaths    := 
R3_debug_defines   := $(R3_custom_defines)
R3_debug_defines   += ANDROID
R3_debug_defines   += _LIB
R3_debug_defines   += GL_API_LEVEL_ES2
R3_debug_defines   += _DEBUG
R3_debug_libraries := 
R3_debug_common_cflags	:= $(R3_custom_cflags)
R3_debug_common_cflags    += -MMD
R3_debug_common_cflags    += $(addprefix -D, $(R3_debug_defines))
R3_debug_common_cflags    += $(addprefix -I, $(R3_debug_hpaths))
R3_debug_cflags	:= $(R3_debug_common_cflags)
R3_debug_cflags  += -fpic -fPIC -ffunction-sections -funwind-tables -fstack-protector -no-canonical-prefixes -march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3-d16 -fstrict-aliasing -funswitch-loops -finline-limit=300
R3_debug_cflags  += -funwind-tables -O0 -g -ggdb -fno-omit-frame-pointer
R3_debug_cppflags	:= $(R3_debug_common_cflags)
R3_debug_cppflags  += -fpic -fPIC -ffunction-sections -funwind-tables -fstack-protector -no-canonical-prefixes -march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3-d16 -fstrict-aliasing -funswitch-loops -finline-limit=300
R3_debug_cppflags  += -funwind-tables -O0 -g -ggdb -fno-omit-frame-pointer
R3_debug_lflags    := $(R3_custom_lflags)
R3_debug_lflags    += $(addprefix -L, $(R3_debug_lpaths))
R3_debug_lflags    += -Wl,--start-group $(addprefix -l, $(R3_debug_libraries)) -Wl,--end-group
R3_debug_objsdir  = $(OBJS_DIR)/R3_debug
R3_debug_cpp_o    = $(addprefix $(R3_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(R3_cppfiles)))))
R3_debug_cc_o    = $(addprefix $(R3_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.o, $(R3_ccfiles)))))
R3_debug_c_o      = $(addprefix $(R3_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(R3_cfiles)))))
R3_debug_obj      = $(R3_debug_cpp_o) $(R3_debug_cc_o) $(R3_debug_c_o)
R3_debug_bin      := ./../../lib/Tegra-Android/libR3D.a

clean_R3_debug: 
	$(ECHO) clean R3 debug
	$(RMDIR) $(R3_debug_objsdir)
	$(RMDIR) $(R3_debug_bin)

build_R3_debug: postbuild_R3_debug
postbuild_R3_debug: mainbuild_R3_debug
mainbuild_R3_debug: prebuild_R3_debug $(R3_debug_bin)
prebuild_R3_debug:

$(R3_debug_bin): $(R3_debug_obj) 
	mkdir -p `dirname ./../../lib/Tegra-Android/libR3D.a`
	$(AR) rcs $(R3_debug_bin) $(R3_debug_obj)
	$(ECHO) building $@ complete!

R3_debug_DEPDIR = $(dir $(@))/$(*F)
$(R3_debug_cpp_o): $(R3_debug_objsdir)/%.o:
	$(ECHO) R3: compiling debug $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(R3_debug_objsdir),, $@))), $(R3_cppfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(R3_debug_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(R3_debug_objsdir),, $@))), $(R3_cppfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(R3_debug_objsdir),, $@))), $(R3_cppfiles))))))
	cp $(R3_debug_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(R3_debug_objsdir),, $@))), $(R3_cppfiles))))).debug.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(R3_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(R3_debug_objsdir),, $@))), $(R3_cppfiles))))).debug.P; \
	  rm -f $(R3_debug_DEPDIR).d

$(R3_debug_cc_o): $(R3_debug_objsdir)/%.o:
	$(ECHO) R3: compiling debug $(filter %$(strip $(subst .cc.o,.cc, $(subst $(R3_debug_objsdir),, $@))), $(R3_ccfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(R3_debug_cppflags) -c $(filter %$(strip $(subst .cc.o,.cc, $(subst $(R3_debug_objsdir),, $@))), $(R3_ccfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(R3_debug_objsdir),, $@))), $(R3_ccfiles))))))
	cp $(R3_debug_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(R3_debug_objsdir),, $@))), $(R3_ccfiles))))).debug.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(R3_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(R3_debug_objsdir),, $@))), $(R3_ccfiles))))).debug.P; \
	  rm -f $(R3_debug_DEPDIR).d

$(R3_debug_c_o): $(R3_debug_objsdir)/%.o:
	$(ECHO) R3: compiling debug $(filter %$(strip $(subst .c.o,.c, $(subst $(R3_debug_objsdir),, $@))), $(R3_cfiles))...
	mkdir -p $(dir $(@))
	$(CC) $(R3_debug_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(R3_debug_objsdir),, $@))), $(R3_cfiles)) -o $@ 
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(R3_debug_objsdir),, $@))), $(R3_cfiles))))))
	cp $(R3_debug_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(R3_debug_objsdir),, $@))), $(R3_cfiles))))).debug.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(R3_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(R3_debug_objsdir),, $@))), $(R3_cfiles))))).debug.P; \
	  rm -f $(R3_debug_DEPDIR).d

R3_release_hpaths    := 
R3_release_hpaths    += ./../../src/R3
R3_release_hpaths    += ./../../include
R3_release_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/platforms/android-14/arch-arm/usr/include
R3_release_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/sources/cxx-stl/gnu-libstdc++/4.8/include
R3_release_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi-v7a/include
R3_release_hpaths    += $(if $(NVPACK_ROOT),$(NVPACK_ROOT),$(error the environment must define NVPACK_ROOT))/$(if $(NVPACK_NDK_VERSION),$(NVPACK_NDK_VERSION),android-ndk-r9d)/sources/cxx-stl/gnu-libstdc++/4.8/include/backward
R3_release_lpaths    := 
R3_release_defines   := $(R3_custom_defines)
R3_release_defines   += ANDROID
R3_release_defines   += _LIB
R3_release_defines   += GL_API_LEVEL_ES2
R3_release_defines   += NDEBUG
R3_release_libraries := 
R3_release_common_cflags	:= $(R3_custom_cflags)
R3_release_common_cflags    += -MMD
R3_release_common_cflags    += $(addprefix -D, $(R3_release_defines))
R3_release_common_cflags    += $(addprefix -I, $(R3_release_hpaths))
R3_release_cflags	:= $(R3_release_common_cflags)
R3_release_cflags  += -fpic -fPIC -ffunction-sections -funwind-tables -fstack-protector -no-canonical-prefixes -march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3-d16 -fstrict-aliasing -funswitch-loops -finline-limit=300
R3_release_cflags  += -funwind-tables -O2 -fno-omit-frame-pointer
R3_release_cppflags	:= $(R3_release_common_cflags)
R3_release_cppflags  += -fpic -fPIC -ffunction-sections -funwind-tables -fstack-protector -no-canonical-prefixes -march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3-d16 -fstrict-aliasing -funswitch-loops -finline-limit=300
R3_release_cppflags  += -funwind-tables -O2 -fno-omit-frame-pointer
R3_release_lflags    := $(R3_custom_lflags)
R3_release_lflags    += $(addprefix -L, $(R3_release_lpaths))
R3_release_lflags    += -Wl,--start-group $(addprefix -l, $(R3_release_libraries)) -Wl,--end-group
R3_release_objsdir  = $(OBJS_DIR)/R3_release
R3_release_cpp_o    = $(addprefix $(R3_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(R3_cppfiles)))))
R3_release_cc_o    = $(addprefix $(R3_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.o, $(R3_ccfiles)))))
R3_release_c_o      = $(addprefix $(R3_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(R3_cfiles)))))
R3_release_obj      = $(R3_release_cpp_o) $(R3_release_cc_o) $(R3_release_c_o)
R3_release_bin      := ./../../lib/Tegra-Android/libR3.a

clean_R3_release: 
	$(ECHO) clean R3 release
	$(RMDIR) $(R3_release_objsdir)
	$(RMDIR) $(R3_release_bin)

build_R3_release: postbuild_R3_release
postbuild_R3_release: mainbuild_R3_release
mainbuild_R3_release: prebuild_R3_release $(R3_release_bin)
prebuild_R3_release:

$(R3_release_bin): $(R3_release_obj) 
	mkdir -p `dirname ./../../lib/Tegra-Android/libR3.a`
	$(AR) rcs $(R3_release_bin) $(R3_release_obj)
	$(ECHO) building $@ complete!

R3_release_DEPDIR = $(dir $(@))/$(*F)
$(R3_release_cpp_o): $(R3_release_objsdir)/%.o:
	$(ECHO) R3: compiling release $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(R3_release_objsdir),, $@))), $(R3_cppfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(R3_release_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(R3_release_objsdir),, $@))), $(R3_cppfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(R3_release_objsdir),, $@))), $(R3_cppfiles))))))
	cp $(R3_release_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(R3_release_objsdir),, $@))), $(R3_cppfiles))))).release.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(R3_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(R3_release_objsdir),, $@))), $(R3_cppfiles))))).release.P; \
	  rm -f $(R3_release_DEPDIR).d

$(R3_release_cc_o): $(R3_release_objsdir)/%.o:
	$(ECHO) R3: compiling release $(filter %$(strip $(subst .cc.o,.cc, $(subst $(R3_release_objsdir),, $@))), $(R3_ccfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(R3_release_cppflags) -c $(filter %$(strip $(subst .cc.o,.cc, $(subst $(R3_release_objsdir),, $@))), $(R3_ccfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(R3_release_objsdir),, $@))), $(R3_ccfiles))))))
	cp $(R3_release_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(R3_release_objsdir),, $@))), $(R3_ccfiles))))).release.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(R3_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(R3_release_objsdir),, $@))), $(R3_ccfiles))))).release.P; \
	  rm -f $(R3_release_DEPDIR).d

$(R3_release_c_o): $(R3_release_objsdir)/%.o:
	$(ECHO) R3: compiling release $(filter %$(strip $(subst .c.o,.c, $(subst $(R3_release_objsdir),, $@))), $(R3_cfiles))...
	mkdir -p $(dir $(@))
	$(CC) $(R3_release_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(R3_release_objsdir),, $@))), $(R3_cfiles)) -o $@ 
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(R3_release_objsdir),, $@))), $(R3_cfiles))))))
	cp $(R3_release_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(R3_release_objsdir),, $@))), $(R3_cfiles))))).release.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(R3_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(R3_release_objsdir),, $@))), $(R3_cfiles))))).release.P; \
	  rm -f $(R3_release_DEPDIR).d

clean_R3:  clean_R3_debug clean_R3_release
	rm -rf $(DEPSDIR)

export VERBOSE
ifndef VERBOSE
.SILENT:
endif
