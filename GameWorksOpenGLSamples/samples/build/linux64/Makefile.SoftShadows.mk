# Makefile generated by XPJ for linux64
-include Makefile.custom
ProjectName = SoftShadows
SoftShadows_cppfiles   += ./../../es3aep-kepler/SoftShadows/KnightModel.cpp
SoftShadows_cppfiles   += ./../../es3aep-kepler/SoftShadows/PodiumModel.cpp
SoftShadows_cppfiles   += ./../../es3aep-kepler/SoftShadows/RigidMesh.cpp
SoftShadows_cppfiles   += ./../../es3aep-kepler/SoftShadows/SoftShadows.cpp
SoftShadows_cppfiles   += ./../../es3aep-kepler/SoftShadows/SoftShadowsRenderer.cpp

SoftShadows_cpp_debug_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.debug.P, $(SoftShadows_cppfiles)))))
SoftShadows_cc_debug_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.debug.P, $(SoftShadows_ccfiles)))))
SoftShadows_c_debug_dep      = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.debug.P, $(SoftShadows_cfiles)))))
SoftShadows_debug_dep      = $(SoftShadows_cpp_debug_dep) $(SoftShadows_cc_debug_dep) $(SoftShadows_c_debug_dep)
-include $(SoftShadows_debug_dep)
SoftShadows_cpp_release_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.release.P, $(SoftShadows_cppfiles)))))
SoftShadows_cc_release_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.release.P, $(SoftShadows_ccfiles)))))
SoftShadows_c_release_dep      = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.release.P, $(SoftShadows_cfiles)))))
SoftShadows_release_dep      = $(SoftShadows_cpp_release_dep) $(SoftShadows_cc_release_dep) $(SoftShadows_c_release_dep)
-include $(SoftShadows_release_dep)
SoftShadows_debug_hpaths    := 
SoftShadows_debug_hpaths    += ./../../es3aep-kepler/SoftShadows
SoftShadows_debug_hpaths    += ./../../../extensions/include
SoftShadows_debug_hpaths    += ./../../../extensions/externals/include
SoftShadows_debug_hpaths    += ./../../../extensions/externals/include/GLFW
SoftShadows_debug_lpaths    := 
SoftShadows_debug_lpaths    += ./../../../extensions/externals/lib/linux64
SoftShadows_debug_lpaths    += ./../../../extensions/lib/linux64
SoftShadows_debug_lpaths    += ./../../../../../../../../../../../../../usr/lib/x86_64-linux-gnu
SoftShadows_debug_lpaths    += ./../../../extensions/externals/lib/linux64
SoftShadows_debug_lpaths    += ./../../../extensions/lib/linux64
SoftShadows_debug_defines   := $(SoftShadows_custom_defines)
SoftShadows_debug_defines   += LINUX=1
SoftShadows_debug_defines   += GLEW_NO_GLU=1
SoftShadows_debug_defines   += _DEBUG
SoftShadows_debug_libraries := 
SoftShadows_debug_libraries += GL
SoftShadows_debug_libraries += GLU
SoftShadows_debug_libraries += GLEW
SoftShadows_debug_libraries += glfw3
SoftShadows_debug_libraries += pthread
SoftShadows_debug_libraries += rt
SoftShadows_debug_libraries += dl
SoftShadows_debug_libraries += X11
SoftShadows_debug_libraries += Xrandr
SoftShadows_debug_libraries += Xxf86vm
SoftShadows_debug_libraries += Xi
SoftShadows_debug_libraries += HalfD
SoftShadows_debug_libraries += NvAppBaseD
SoftShadows_debug_libraries += NvAssetLoaderD
SoftShadows_debug_libraries += NvGamepadD
SoftShadows_debug_libraries += NvGLUtilsD
SoftShadows_debug_libraries += NvModelD
SoftShadows_debug_libraries += NvUID
SoftShadows_debug_common_cflags	:= $(SoftShadows_custom_cflags)
SoftShadows_debug_common_cflags    += -MMD
SoftShadows_debug_common_cflags    += $(addprefix -D, $(SoftShadows_debug_defines))
SoftShadows_debug_common_cflags    += $(addprefix -I, $(SoftShadows_debug_hpaths))
SoftShadows_debug_common_cflags  += -m64
SoftShadows_debug_cflags	:= $(SoftShadows_debug_common_cflags)
SoftShadows_debug_cflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function
SoftShadows_debug_cflags  += -malign-double
SoftShadows_debug_cflags  += -funwind-tables -O0 -g -ggdb -fno-omit-frame-pointer
SoftShadows_debug_cppflags	:= $(SoftShadows_debug_common_cflags)
SoftShadows_debug_cppflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function
SoftShadows_debug_cppflags  += -Wno-reorder
SoftShadows_debug_cppflags  += -malign-double
SoftShadows_debug_cppflags  += -funwind-tables -O0 -g -ggdb -fno-omit-frame-pointer
SoftShadows_debug_lflags    := $(SoftShadows_custom_lflags)
SoftShadows_debug_lflags    += $(addprefix -L, $(SoftShadows_debug_lpaths))
SoftShadows_debug_lflags    += -Wl,--start-group $(addprefix -l, $(SoftShadows_debug_libraries)) -Wl,--end-group
SoftShadows_debug_lflags  += -Wl,--unresolved-symbols=ignore-in-shared-libs
SoftShadows_debug_lflags  += -m64
SoftShadows_debug_lflags  += -m64
SoftShadows_debug_objsdir  = $(OBJS_DIR)/SoftShadows_debug
SoftShadows_debug_cpp_o    = $(addprefix $(SoftShadows_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(SoftShadows_cppfiles)))))
SoftShadows_debug_cc_o    = $(addprefix $(SoftShadows_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.o, $(SoftShadows_ccfiles)))))
SoftShadows_debug_c_o      = $(addprefix $(SoftShadows_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(SoftShadows_cfiles)))))
SoftShadows_debug_obj      = $(SoftShadows_debug_cpp_o) $(SoftShadows_debug_cc_o) $(SoftShadows_debug_c_o)
SoftShadows_debug_bin      := ./../../bin/linux64/SoftShadowsD

clean_SoftShadows_debug: 
	$(ECHO) clean SoftShadows debug
	$(RMDIR) $(SoftShadows_debug_objsdir)
	$(RMDIR) $(SoftShadows_debug_bin)

build_SoftShadows_debug: postbuild_SoftShadows_debug
postbuild_SoftShadows_debug: mainbuild_SoftShadows_debug
mainbuild_SoftShadows_debug: prebuild_SoftShadows_debug $(SoftShadows_debug_bin)
prebuild_SoftShadows_debug:

$(SoftShadows_debug_bin): $(SoftShadows_debug_obj) build_Half_debug build_NvAppBase_debug build_NvAssetLoader_debug build_NvGamepad_debug build_NvGLUtils_debug build_NvModel_debug build_NvUI_debug 
	mkdir -p `dirname ./../../bin/linux64/SoftShadowsD`
	$(CCLD) $(SoftShadows_debug_obj) $(SoftShadows_debug_lflags) -o $(SoftShadows_debug_bin) 
	$(ECHO) building $@ complete!

SoftShadows_debug_DEPDIR = $(dir $(@))/$(*F)
$(SoftShadows_debug_cpp_o): $(SoftShadows_debug_objsdir)/%.o:
	$(ECHO) SoftShadows: compiling debug $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(SoftShadows_debug_objsdir),, $@))), $(SoftShadows_cppfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(SoftShadows_debug_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(SoftShadows_debug_objsdir),, $@))), $(SoftShadows_cppfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(SoftShadows_debug_objsdir),, $@))), $(SoftShadows_cppfiles))))))
	cp $(SoftShadows_debug_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(SoftShadows_debug_objsdir),, $@))), $(SoftShadows_cppfiles))))).debug.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(SoftShadows_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(SoftShadows_debug_objsdir),, $@))), $(SoftShadows_cppfiles))))).debug.P; \
	  rm -f $(SoftShadows_debug_DEPDIR).d

$(SoftShadows_debug_cc_o): $(SoftShadows_debug_objsdir)/%.o:
	$(ECHO) SoftShadows: compiling debug $(filter %$(strip $(subst .cc.o,.cc, $(subst $(SoftShadows_debug_objsdir),, $@))), $(SoftShadows_ccfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(SoftShadows_debug_cppflags) -c $(filter %$(strip $(subst .cc.o,.cc, $(subst $(SoftShadows_debug_objsdir),, $@))), $(SoftShadows_ccfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(SoftShadows_debug_objsdir),, $@))), $(SoftShadows_ccfiles))))))
	cp $(SoftShadows_debug_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(SoftShadows_debug_objsdir),, $@))), $(SoftShadows_ccfiles))))).debug.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(SoftShadows_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(SoftShadows_debug_objsdir),, $@))), $(SoftShadows_ccfiles))))).debug.P; \
	  rm -f $(SoftShadows_debug_DEPDIR).d

$(SoftShadows_debug_c_o): $(SoftShadows_debug_objsdir)/%.o:
	$(ECHO) SoftShadows: compiling debug $(filter %$(strip $(subst .c.o,.c, $(subst $(SoftShadows_debug_objsdir),, $@))), $(SoftShadows_cfiles))...
	mkdir -p $(dir $(@))
	$(CC) $(SoftShadows_debug_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(SoftShadows_debug_objsdir),, $@))), $(SoftShadows_cfiles)) -o $@ 
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(SoftShadows_debug_objsdir),, $@))), $(SoftShadows_cfiles))))))
	cp $(SoftShadows_debug_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(SoftShadows_debug_objsdir),, $@))), $(SoftShadows_cfiles))))).debug.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(SoftShadows_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(SoftShadows_debug_objsdir),, $@))), $(SoftShadows_cfiles))))).debug.P; \
	  rm -f $(SoftShadows_debug_DEPDIR).d

SoftShadows_release_hpaths    := 
SoftShadows_release_hpaths    += ./../../es3aep-kepler/SoftShadows
SoftShadows_release_hpaths    += ./../../../extensions/include
SoftShadows_release_hpaths    += ./../../../extensions/externals/include
SoftShadows_release_hpaths    += ./../../../extensions/externals/include/GLFW
SoftShadows_release_lpaths    := 
SoftShadows_release_lpaths    += ./../../../extensions/externals/lib/linux64
SoftShadows_release_lpaths    += ./../../../extensions/lib/linux64
SoftShadows_release_lpaths    += ./../../../../../../../../../../../../../usr/lib/x86_64-linux-gnu
SoftShadows_release_lpaths    += ./../../../extensions/externals/lib/linux64
SoftShadows_release_lpaths    += ./../../../extensions/lib/linux64
SoftShadows_release_defines   := $(SoftShadows_custom_defines)
SoftShadows_release_defines   += LINUX=1
SoftShadows_release_defines   += GLEW_NO_GLU=1
SoftShadows_release_defines   += NDEBUG
SoftShadows_release_libraries := 
SoftShadows_release_libraries += GL
SoftShadows_release_libraries += GLU
SoftShadows_release_libraries += GLEW
SoftShadows_release_libraries += glfw3
SoftShadows_release_libraries += pthread
SoftShadows_release_libraries += rt
SoftShadows_release_libraries += dl
SoftShadows_release_libraries += X11
SoftShadows_release_libraries += Xrandr
SoftShadows_release_libraries += Xxf86vm
SoftShadows_release_libraries += Xi
SoftShadows_release_libraries += Half
SoftShadows_release_libraries += NvAppBase
SoftShadows_release_libraries += NvAssetLoader
SoftShadows_release_libraries += NvGamepad
SoftShadows_release_libraries += NvGLUtils
SoftShadows_release_libraries += NvModel
SoftShadows_release_libraries += NvUI
SoftShadows_release_common_cflags	:= $(SoftShadows_custom_cflags)
SoftShadows_release_common_cflags    += -MMD
SoftShadows_release_common_cflags    += $(addprefix -D, $(SoftShadows_release_defines))
SoftShadows_release_common_cflags    += $(addprefix -I, $(SoftShadows_release_hpaths))
SoftShadows_release_common_cflags  += -m64
SoftShadows_release_cflags	:= $(SoftShadows_release_common_cflags)
SoftShadows_release_cflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function
SoftShadows_release_cflags  += -malign-double
SoftShadows_release_cflags  += -funwind-tables -O2 -fno-omit-frame-pointer
SoftShadows_release_cppflags	:= $(SoftShadows_release_common_cflags)
SoftShadows_release_cppflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function
SoftShadows_release_cppflags  += -Wno-reorder
SoftShadows_release_cppflags  += -malign-double
SoftShadows_release_cppflags  += -funwind-tables -O2 -fno-omit-frame-pointer
SoftShadows_release_lflags    := $(SoftShadows_custom_lflags)
SoftShadows_release_lflags    += $(addprefix -L, $(SoftShadows_release_lpaths))
SoftShadows_release_lflags    += -Wl,--start-group $(addprefix -l, $(SoftShadows_release_libraries)) -Wl,--end-group
SoftShadows_release_lflags  += -Wl,--unresolved-symbols=ignore-in-shared-libs
SoftShadows_release_lflags  += -m64
SoftShadows_release_lflags  += -m64
SoftShadows_release_objsdir  = $(OBJS_DIR)/SoftShadows_release
SoftShadows_release_cpp_o    = $(addprefix $(SoftShadows_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(SoftShadows_cppfiles)))))
SoftShadows_release_cc_o    = $(addprefix $(SoftShadows_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.o, $(SoftShadows_ccfiles)))))
SoftShadows_release_c_o      = $(addprefix $(SoftShadows_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(SoftShadows_cfiles)))))
SoftShadows_release_obj      = $(SoftShadows_release_cpp_o) $(SoftShadows_release_cc_o) $(SoftShadows_release_c_o)
SoftShadows_release_bin      := ./../../bin/linux64/SoftShadows

clean_SoftShadows_release: 
	$(ECHO) clean SoftShadows release
	$(RMDIR) $(SoftShadows_release_objsdir)
	$(RMDIR) $(SoftShadows_release_bin)

build_SoftShadows_release: postbuild_SoftShadows_release
postbuild_SoftShadows_release: mainbuild_SoftShadows_release
mainbuild_SoftShadows_release: prebuild_SoftShadows_release $(SoftShadows_release_bin)
prebuild_SoftShadows_release:

$(SoftShadows_release_bin): $(SoftShadows_release_obj) build_Half_release build_NvAppBase_release build_NvAssetLoader_release build_NvGamepad_release build_NvGLUtils_release build_NvModel_release build_NvUI_release 
	mkdir -p `dirname ./../../bin/linux64/SoftShadows`
	$(CCLD) $(SoftShadows_release_obj) $(SoftShadows_release_lflags) -o $(SoftShadows_release_bin) 
	$(ECHO) building $@ complete!

SoftShadows_release_DEPDIR = $(dir $(@))/$(*F)
$(SoftShadows_release_cpp_o): $(SoftShadows_release_objsdir)/%.o:
	$(ECHO) SoftShadows: compiling release $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(SoftShadows_release_objsdir),, $@))), $(SoftShadows_cppfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(SoftShadows_release_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(SoftShadows_release_objsdir),, $@))), $(SoftShadows_cppfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(SoftShadows_release_objsdir),, $@))), $(SoftShadows_cppfiles))))))
	cp $(SoftShadows_release_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(SoftShadows_release_objsdir),, $@))), $(SoftShadows_cppfiles))))).release.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(SoftShadows_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(SoftShadows_release_objsdir),, $@))), $(SoftShadows_cppfiles))))).release.P; \
	  rm -f $(SoftShadows_release_DEPDIR).d

$(SoftShadows_release_cc_o): $(SoftShadows_release_objsdir)/%.o:
	$(ECHO) SoftShadows: compiling release $(filter %$(strip $(subst .cc.o,.cc, $(subst $(SoftShadows_release_objsdir),, $@))), $(SoftShadows_ccfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(SoftShadows_release_cppflags) -c $(filter %$(strip $(subst .cc.o,.cc, $(subst $(SoftShadows_release_objsdir),, $@))), $(SoftShadows_ccfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(SoftShadows_release_objsdir),, $@))), $(SoftShadows_ccfiles))))))
	cp $(SoftShadows_release_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(SoftShadows_release_objsdir),, $@))), $(SoftShadows_ccfiles))))).release.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(SoftShadows_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(SoftShadows_release_objsdir),, $@))), $(SoftShadows_ccfiles))))).release.P; \
	  rm -f $(SoftShadows_release_DEPDIR).d

$(SoftShadows_release_c_o): $(SoftShadows_release_objsdir)/%.o:
	$(ECHO) SoftShadows: compiling release $(filter %$(strip $(subst .c.o,.c, $(subst $(SoftShadows_release_objsdir),, $@))), $(SoftShadows_cfiles))...
	mkdir -p $(dir $(@))
	$(CC) $(SoftShadows_release_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(SoftShadows_release_objsdir),, $@))), $(SoftShadows_cfiles)) -o $@ 
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(SoftShadows_release_objsdir),, $@))), $(SoftShadows_cfiles))))))
	cp $(SoftShadows_release_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(SoftShadows_release_objsdir),, $@))), $(SoftShadows_cfiles))))).release.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(SoftShadows_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(SoftShadows_release_objsdir),, $@))), $(SoftShadows_cfiles))))).release.P; \
	  rm -f $(SoftShadows_release_DEPDIR).d

clean_SoftShadows:  clean_SoftShadows_debug clean_SoftShadows_release
	rm -rf $(DEPSDIR)

export VERBOSE
ifndef VERBOSE
.SILENT:
endif
