# Makefile generated by XPJ for linux64
-include Makefile.custom
ProjectName = TerrainTessellation
TerrainTessellation_cppfiles   += ./../../es3aep-kepler/TerrainTessellation/TerrainTessellation.cpp
TerrainTessellation_cppfiles   += ./../../es3aep-kepler/TerrainTessellation/noise.cpp

TerrainTessellation_cpp_debug_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.debug.P, $(TerrainTessellation_cppfiles)))))
TerrainTessellation_cc_debug_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.debug.P, $(TerrainTessellation_ccfiles)))))
TerrainTessellation_c_debug_dep      = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.debug.P, $(TerrainTessellation_cfiles)))))
TerrainTessellation_debug_dep      = $(TerrainTessellation_cpp_debug_dep) $(TerrainTessellation_cc_debug_dep) $(TerrainTessellation_c_debug_dep)
-include $(TerrainTessellation_debug_dep)
TerrainTessellation_cpp_release_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.release.P, $(TerrainTessellation_cppfiles)))))
TerrainTessellation_cc_release_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.release.P, $(TerrainTessellation_ccfiles)))))
TerrainTessellation_c_release_dep      = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.release.P, $(TerrainTessellation_cfiles)))))
TerrainTessellation_release_dep      = $(TerrainTessellation_cpp_release_dep) $(TerrainTessellation_cc_release_dep) $(TerrainTessellation_c_release_dep)
-include $(TerrainTessellation_release_dep)
TerrainTessellation_debug_hpaths    := 
TerrainTessellation_debug_hpaths    += ./../../es3aep-kepler/TerrainTessellation/assets/shaders
TerrainTessellation_debug_hpaths    += ./../../es3aep-kepler/TerrainTessellation
TerrainTessellation_debug_hpaths    += ./../../../extensions/include
TerrainTessellation_debug_hpaths    += ./../../../extensions/externals/include
TerrainTessellation_debug_hpaths    += ./../../../extensions/externals/include/GLFW
TerrainTessellation_debug_lpaths    := 
TerrainTessellation_debug_lpaths    += ./../../../extensions/externals/lib/linux64
TerrainTessellation_debug_lpaths    += ./../../../extensions/lib/linux64
TerrainTessellation_debug_lpaths    += ./../../../../../../../../../../../../../usr/lib/x86_64-linux-gnu
TerrainTessellation_debug_lpaths    += ./../../../extensions/externals/lib/linux64
TerrainTessellation_debug_lpaths    += ./../../../extensions/lib/linux64
TerrainTessellation_debug_defines   := $(TerrainTessellation_custom_defines)
TerrainTessellation_debug_defines   += LINUX=1
TerrainTessellation_debug_defines   += GLEW_NO_GLU=1
TerrainTessellation_debug_defines   += _DEBUG
TerrainTessellation_debug_libraries := 
TerrainTessellation_debug_libraries += GL
TerrainTessellation_debug_libraries += GLU
TerrainTessellation_debug_libraries += GLEW
TerrainTessellation_debug_libraries += glfw3
TerrainTessellation_debug_libraries += pthread
TerrainTessellation_debug_libraries += rt
TerrainTessellation_debug_libraries += dl
TerrainTessellation_debug_libraries += X11
TerrainTessellation_debug_libraries += Xrandr
TerrainTessellation_debug_libraries += Xxf86vm
TerrainTessellation_debug_libraries += Xi
TerrainTessellation_debug_libraries += HalfD
TerrainTessellation_debug_libraries += NvAppBaseD
TerrainTessellation_debug_libraries += NvAssetLoaderD
TerrainTessellation_debug_libraries += NvGamepadD
TerrainTessellation_debug_libraries += NvGLUtilsD
TerrainTessellation_debug_libraries += NvModelD
TerrainTessellation_debug_libraries += NvUID
TerrainTessellation_debug_common_cflags	:= $(TerrainTessellation_custom_cflags)
TerrainTessellation_debug_common_cflags    += -MMD
TerrainTessellation_debug_common_cflags    += $(addprefix -D, $(TerrainTessellation_debug_defines))
TerrainTessellation_debug_common_cflags    += $(addprefix -I, $(TerrainTessellation_debug_hpaths))
TerrainTessellation_debug_common_cflags  += -m64
TerrainTessellation_debug_cflags	:= $(TerrainTessellation_debug_common_cflags)
TerrainTessellation_debug_cflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function
TerrainTessellation_debug_cflags  += -malign-double
TerrainTessellation_debug_cflags  += -funwind-tables -O0 -g -ggdb -fno-omit-frame-pointer
TerrainTessellation_debug_cppflags	:= $(TerrainTessellation_debug_common_cflags)
TerrainTessellation_debug_cppflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function
TerrainTessellation_debug_cppflags  += -Wno-reorder
TerrainTessellation_debug_cppflags  += -malign-double
TerrainTessellation_debug_cppflags  += -funwind-tables -O0 -g -ggdb -fno-omit-frame-pointer
TerrainTessellation_debug_lflags    := $(TerrainTessellation_custom_lflags)
TerrainTessellation_debug_lflags    += $(addprefix -L, $(TerrainTessellation_debug_lpaths))
TerrainTessellation_debug_lflags    += -Wl,--start-group $(addprefix -l, $(TerrainTessellation_debug_libraries)) -Wl,--end-group
TerrainTessellation_debug_lflags  += -Wl,--unresolved-symbols=ignore-in-shared-libs
TerrainTessellation_debug_lflags  += -m64
TerrainTessellation_debug_lflags  += -m64
TerrainTessellation_debug_objsdir  = $(OBJS_DIR)/TerrainTessellation_debug
TerrainTessellation_debug_cpp_o    = $(addprefix $(TerrainTessellation_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(TerrainTessellation_cppfiles)))))
TerrainTessellation_debug_cc_o    = $(addprefix $(TerrainTessellation_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.o, $(TerrainTessellation_ccfiles)))))
TerrainTessellation_debug_c_o      = $(addprefix $(TerrainTessellation_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(TerrainTessellation_cfiles)))))
TerrainTessellation_debug_obj      = $(TerrainTessellation_debug_cpp_o) $(TerrainTessellation_debug_cc_o) $(TerrainTessellation_debug_c_o)
TerrainTessellation_debug_bin      := ./../../bin/linux64/TerrainTessellationD

clean_TerrainTessellation_debug: 
	$(ECHO) clean TerrainTessellation debug
	$(RMDIR) $(TerrainTessellation_debug_objsdir)
	$(RMDIR) $(TerrainTessellation_debug_bin)

build_TerrainTessellation_debug: postbuild_TerrainTessellation_debug
postbuild_TerrainTessellation_debug: mainbuild_TerrainTessellation_debug
mainbuild_TerrainTessellation_debug: prebuild_TerrainTessellation_debug $(TerrainTessellation_debug_bin)
prebuild_TerrainTessellation_debug:

$(TerrainTessellation_debug_bin): $(TerrainTessellation_debug_obj) build_Half_debug build_NvAppBase_debug build_NvAssetLoader_debug build_NvGamepad_debug build_NvGLUtils_debug build_NvModel_debug build_NvUI_debug 
	mkdir -p `dirname ./../../bin/linux64/TerrainTessellationD`
	$(CCLD) $(TerrainTessellation_debug_obj) $(TerrainTessellation_debug_lflags) -o $(TerrainTessellation_debug_bin) 
	$(ECHO) building $@ complete!

TerrainTessellation_debug_DEPDIR = $(dir $(@))/$(*F)
$(TerrainTessellation_debug_cpp_o): $(TerrainTessellation_debug_objsdir)/%.o:
	$(ECHO) TerrainTessellation: compiling debug $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(TerrainTessellation_debug_objsdir),, $@))), $(TerrainTessellation_cppfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(TerrainTessellation_debug_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(TerrainTessellation_debug_objsdir),, $@))), $(TerrainTessellation_cppfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(TerrainTessellation_debug_objsdir),, $@))), $(TerrainTessellation_cppfiles))))))
	cp $(TerrainTessellation_debug_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(TerrainTessellation_debug_objsdir),, $@))), $(TerrainTessellation_cppfiles))))).debug.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(TerrainTessellation_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(TerrainTessellation_debug_objsdir),, $@))), $(TerrainTessellation_cppfiles))))).debug.P; \
	  rm -f $(TerrainTessellation_debug_DEPDIR).d

$(TerrainTessellation_debug_cc_o): $(TerrainTessellation_debug_objsdir)/%.o:
	$(ECHO) TerrainTessellation: compiling debug $(filter %$(strip $(subst .cc.o,.cc, $(subst $(TerrainTessellation_debug_objsdir),, $@))), $(TerrainTessellation_ccfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(TerrainTessellation_debug_cppflags) -c $(filter %$(strip $(subst .cc.o,.cc, $(subst $(TerrainTessellation_debug_objsdir),, $@))), $(TerrainTessellation_ccfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(TerrainTessellation_debug_objsdir),, $@))), $(TerrainTessellation_ccfiles))))))
	cp $(TerrainTessellation_debug_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(TerrainTessellation_debug_objsdir),, $@))), $(TerrainTessellation_ccfiles))))).debug.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(TerrainTessellation_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(TerrainTessellation_debug_objsdir),, $@))), $(TerrainTessellation_ccfiles))))).debug.P; \
	  rm -f $(TerrainTessellation_debug_DEPDIR).d

$(TerrainTessellation_debug_c_o): $(TerrainTessellation_debug_objsdir)/%.o:
	$(ECHO) TerrainTessellation: compiling debug $(filter %$(strip $(subst .c.o,.c, $(subst $(TerrainTessellation_debug_objsdir),, $@))), $(TerrainTessellation_cfiles))...
	mkdir -p $(dir $(@))
	$(CC) $(TerrainTessellation_debug_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(TerrainTessellation_debug_objsdir),, $@))), $(TerrainTessellation_cfiles)) -o $@ 
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(TerrainTessellation_debug_objsdir),, $@))), $(TerrainTessellation_cfiles))))))
	cp $(TerrainTessellation_debug_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(TerrainTessellation_debug_objsdir),, $@))), $(TerrainTessellation_cfiles))))).debug.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(TerrainTessellation_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(TerrainTessellation_debug_objsdir),, $@))), $(TerrainTessellation_cfiles))))).debug.P; \
	  rm -f $(TerrainTessellation_debug_DEPDIR).d

TerrainTessellation_release_hpaths    := 
TerrainTessellation_release_hpaths    += ./../../es3aep-kepler/TerrainTessellation/assets/shaders
TerrainTessellation_release_hpaths    += ./../../es3aep-kepler/TerrainTessellation
TerrainTessellation_release_hpaths    += ./../../../extensions/include
TerrainTessellation_release_hpaths    += ./../../../extensions/externals/include
TerrainTessellation_release_hpaths    += ./../../../extensions/externals/include/GLFW
TerrainTessellation_release_lpaths    := 
TerrainTessellation_release_lpaths    += ./../../../extensions/externals/lib/linux64
TerrainTessellation_release_lpaths    += ./../../../extensions/lib/linux64
TerrainTessellation_release_lpaths    += ./../../../../../../../../../../../../../usr/lib/x86_64-linux-gnu
TerrainTessellation_release_lpaths    += ./../../../extensions/externals/lib/linux64
TerrainTessellation_release_lpaths    += ./../../../extensions/lib/linux64
TerrainTessellation_release_defines   := $(TerrainTessellation_custom_defines)
TerrainTessellation_release_defines   += LINUX=1
TerrainTessellation_release_defines   += GLEW_NO_GLU=1
TerrainTessellation_release_defines   += NDEBUG
TerrainTessellation_release_libraries := 
TerrainTessellation_release_libraries += GL
TerrainTessellation_release_libraries += GLU
TerrainTessellation_release_libraries += GLEW
TerrainTessellation_release_libraries += glfw3
TerrainTessellation_release_libraries += pthread
TerrainTessellation_release_libraries += rt
TerrainTessellation_release_libraries += dl
TerrainTessellation_release_libraries += X11
TerrainTessellation_release_libraries += Xrandr
TerrainTessellation_release_libraries += Xxf86vm
TerrainTessellation_release_libraries += Xi
TerrainTessellation_release_libraries += Half
TerrainTessellation_release_libraries += NvAppBase
TerrainTessellation_release_libraries += NvAssetLoader
TerrainTessellation_release_libraries += NvGamepad
TerrainTessellation_release_libraries += NvGLUtils
TerrainTessellation_release_libraries += NvModel
TerrainTessellation_release_libraries += NvUI
TerrainTessellation_release_common_cflags	:= $(TerrainTessellation_custom_cflags)
TerrainTessellation_release_common_cflags    += -MMD
TerrainTessellation_release_common_cflags    += $(addprefix -D, $(TerrainTessellation_release_defines))
TerrainTessellation_release_common_cflags    += $(addprefix -I, $(TerrainTessellation_release_hpaths))
TerrainTessellation_release_common_cflags  += -m64
TerrainTessellation_release_cflags	:= $(TerrainTessellation_release_common_cflags)
TerrainTessellation_release_cflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function
TerrainTessellation_release_cflags  += -malign-double
TerrainTessellation_release_cflags  += -funwind-tables -O2 -fno-omit-frame-pointer
TerrainTessellation_release_cppflags	:= $(TerrainTessellation_release_common_cflags)
TerrainTessellation_release_cppflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function
TerrainTessellation_release_cppflags  += -Wno-reorder
TerrainTessellation_release_cppflags  += -malign-double
TerrainTessellation_release_cppflags  += -funwind-tables -O2 -fno-omit-frame-pointer
TerrainTessellation_release_lflags    := $(TerrainTessellation_custom_lflags)
TerrainTessellation_release_lflags    += $(addprefix -L, $(TerrainTessellation_release_lpaths))
TerrainTessellation_release_lflags    += -Wl,--start-group $(addprefix -l, $(TerrainTessellation_release_libraries)) -Wl,--end-group
TerrainTessellation_release_lflags  += -Wl,--unresolved-symbols=ignore-in-shared-libs
TerrainTessellation_release_lflags  += -m64
TerrainTessellation_release_lflags  += -m64
TerrainTessellation_release_objsdir  = $(OBJS_DIR)/TerrainTessellation_release
TerrainTessellation_release_cpp_o    = $(addprefix $(TerrainTessellation_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(TerrainTessellation_cppfiles)))))
TerrainTessellation_release_cc_o    = $(addprefix $(TerrainTessellation_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.o, $(TerrainTessellation_ccfiles)))))
TerrainTessellation_release_c_o      = $(addprefix $(TerrainTessellation_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(TerrainTessellation_cfiles)))))
TerrainTessellation_release_obj      = $(TerrainTessellation_release_cpp_o) $(TerrainTessellation_release_cc_o) $(TerrainTessellation_release_c_o)
TerrainTessellation_release_bin      := ./../../bin/linux64/TerrainTessellation

clean_TerrainTessellation_release: 
	$(ECHO) clean TerrainTessellation release
	$(RMDIR) $(TerrainTessellation_release_objsdir)
	$(RMDIR) $(TerrainTessellation_release_bin)

build_TerrainTessellation_release: postbuild_TerrainTessellation_release
postbuild_TerrainTessellation_release: mainbuild_TerrainTessellation_release
mainbuild_TerrainTessellation_release: prebuild_TerrainTessellation_release $(TerrainTessellation_release_bin)
prebuild_TerrainTessellation_release:

$(TerrainTessellation_release_bin): $(TerrainTessellation_release_obj) build_Half_release build_NvAppBase_release build_NvAssetLoader_release build_NvGamepad_release build_NvGLUtils_release build_NvModel_release build_NvUI_release 
	mkdir -p `dirname ./../../bin/linux64/TerrainTessellation`
	$(CCLD) $(TerrainTessellation_release_obj) $(TerrainTessellation_release_lflags) -o $(TerrainTessellation_release_bin) 
	$(ECHO) building $@ complete!

TerrainTessellation_release_DEPDIR = $(dir $(@))/$(*F)
$(TerrainTessellation_release_cpp_o): $(TerrainTessellation_release_objsdir)/%.o:
	$(ECHO) TerrainTessellation: compiling release $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(TerrainTessellation_release_objsdir),, $@))), $(TerrainTessellation_cppfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(TerrainTessellation_release_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(TerrainTessellation_release_objsdir),, $@))), $(TerrainTessellation_cppfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(TerrainTessellation_release_objsdir),, $@))), $(TerrainTessellation_cppfiles))))))
	cp $(TerrainTessellation_release_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(TerrainTessellation_release_objsdir),, $@))), $(TerrainTessellation_cppfiles))))).release.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(TerrainTessellation_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(TerrainTessellation_release_objsdir),, $@))), $(TerrainTessellation_cppfiles))))).release.P; \
	  rm -f $(TerrainTessellation_release_DEPDIR).d

$(TerrainTessellation_release_cc_o): $(TerrainTessellation_release_objsdir)/%.o:
	$(ECHO) TerrainTessellation: compiling release $(filter %$(strip $(subst .cc.o,.cc, $(subst $(TerrainTessellation_release_objsdir),, $@))), $(TerrainTessellation_ccfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(TerrainTessellation_release_cppflags) -c $(filter %$(strip $(subst .cc.o,.cc, $(subst $(TerrainTessellation_release_objsdir),, $@))), $(TerrainTessellation_ccfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(TerrainTessellation_release_objsdir),, $@))), $(TerrainTessellation_ccfiles))))))
	cp $(TerrainTessellation_release_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(TerrainTessellation_release_objsdir),, $@))), $(TerrainTessellation_ccfiles))))).release.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(TerrainTessellation_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(TerrainTessellation_release_objsdir),, $@))), $(TerrainTessellation_ccfiles))))).release.P; \
	  rm -f $(TerrainTessellation_release_DEPDIR).d

$(TerrainTessellation_release_c_o): $(TerrainTessellation_release_objsdir)/%.o:
	$(ECHO) TerrainTessellation: compiling release $(filter %$(strip $(subst .c.o,.c, $(subst $(TerrainTessellation_release_objsdir),, $@))), $(TerrainTessellation_cfiles))...
	mkdir -p $(dir $(@))
	$(CC) $(TerrainTessellation_release_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(TerrainTessellation_release_objsdir),, $@))), $(TerrainTessellation_cfiles)) -o $@ 
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(TerrainTessellation_release_objsdir),, $@))), $(TerrainTessellation_cfiles))))))
	cp $(TerrainTessellation_release_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(TerrainTessellation_release_objsdir),, $@))), $(TerrainTessellation_cfiles))))).release.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(TerrainTessellation_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(TerrainTessellation_release_objsdir),, $@))), $(TerrainTessellation_cfiles))))).release.P; \
	  rm -f $(TerrainTessellation_release_DEPDIR).d

clean_TerrainTessellation:  clean_TerrainTessellation_debug clean_TerrainTessellation_release
	rm -rf $(DEPSDIR)

export VERBOSE
ifndef VERBOSE
.SILENT:
endif