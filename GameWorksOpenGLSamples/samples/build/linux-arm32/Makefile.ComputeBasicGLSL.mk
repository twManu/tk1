# Makefile generated by XPJ for linux-arm32
-include Makefile.custom
ProjectName = ComputeBasicGLSL
ComputeBasicGLSL_cppfiles   += ./../../es3aep-kepler/ComputeBasicGLSL/ComputeBasicGLSL.cpp

ComputeBasicGLSL_debug_hpaths    := 
ComputeBasicGLSL_debug_hpaths    += ./../../es3aep-kepler/ComputeBasicGLSL/assets/shaders
ComputeBasicGLSL_debug_hpaths    += ./../../es3aep-kepler/ComputeBasicGLSL
ComputeBasicGLSL_debug_hpaths    += ./../../../extensions/include
ComputeBasicGLSL_debug_hpaths    += ./../../../extensions/externals/include
ComputeBasicGLSL_debug_hpaths    += ./../../../extensions/externals/include/GLFW
ComputeBasicGLSL_debug_lpaths    := 
ComputeBasicGLSL_debug_lpaths    += ./../../../extensions/externals/lib/linux-arm32
ComputeBasicGLSL_debug_lpaths    += ./../../../extensions/lib/linux-arm32
ComputeBasicGLSL_debug_lpaths    += ./../../../extensions/externals/lib/linux-arm32
ComputeBasicGLSL_debug_lpaths    += ./../../../extensions/lib/linux-arm32
ComputeBasicGLSL_debug_lpaths    += ./../../../extensions/lib/linux-arm32
ComputeBasicGLSL_debug_lpaths    += ./../../../extensions/lib/linux-arm32
ComputeBasicGLSL_debug_lpaths    += ./../../../extensions/lib/linux-arm32
ComputeBasicGLSL_debug_lpaths    += ./../../../extensions/lib/linux-arm32
ComputeBasicGLSL_debug_lpaths    += ./../../../extensions/lib/linux-arm32
ComputeBasicGLSL_debug_defines   := $(ComputeBasicGLSL_custom_defines)
ComputeBasicGLSL_debug_defines   += LINUX=1
ComputeBasicGLSL_debug_defines   += GLEW_NO_GLU=1
ComputeBasicGLSL_debug_defines   += _DEBUG
ComputeBasicGLSL_debug_libraries := 
ComputeBasicGLSL_debug_libraries += NvAppBaseD
ComputeBasicGLSL_debug_libraries += NvUID
ComputeBasicGLSL_debug_libraries += NvAssetLoaderD
ComputeBasicGLSL_debug_libraries += NvModelD
ComputeBasicGLSL_debug_libraries += NvGLUtilsD
ComputeBasicGLSL_debug_libraries += NvGamepadD
ComputeBasicGLSL_debug_libraries += HalfD
ComputeBasicGLSL_debug_libraries += GLEW
ComputeBasicGLSL_debug_libraries += glfw3
ComputeBasicGLSL_debug_libraries += X11
ComputeBasicGLSL_debug_libraries += Xrandr
ComputeBasicGLSL_debug_libraries += Xi
ComputeBasicGLSL_debug_libraries += rt
ComputeBasicGLSL_debug_libraries += m
ComputeBasicGLSL_debug_libraries += GL
ComputeBasicGLSL_debug_libraries += dl
ComputeBasicGLSL_debug_libraries += Xxf86vm
ComputeBasicGLSL_debug_libraries += pthread
ComputeBasicGLSL_debug_libraries += :libHalfD.a
ComputeBasicGLSL_debug_libraries += :libNvAppBaseD.a
ComputeBasicGLSL_debug_libraries += :libNvAssetLoaderD.a
ComputeBasicGLSL_debug_libraries += :libNvGamepadD.a
ComputeBasicGLSL_debug_libraries += :libNvGLUtilsD.a
ComputeBasicGLSL_debug_libraries += :libNvModelD.a
ComputeBasicGLSL_debug_libraries += :libNvUID.a
ComputeBasicGLSL_debug_cflags    := $(ComputeBasicGLSL_custom_cflags)
ComputeBasicGLSL_debug_cflags    += $(addprefix -D, $(ComputeBasicGLSL_debug_defines))
ComputeBasicGLSL_debug_cflags    += $(addprefix -I, $(ComputeBasicGLSL_debug_hpaths))
ComputeBasicGLSL_debug_cflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function
ComputeBasicGLSL_debug_cflags  += -Wno-reorder
ComputeBasicGLSL_debug_cflags  += -funwind-tables -O0 -g -ggdb -fno-omit-frame-pointer
ComputeBasicGLSL_debug_lflags    := $(ComputeBasicGLSL_custom_lflags)
ComputeBasicGLSL_debug_lflags    += $(addprefix -L, $(ComputeBasicGLSL_debug_lpaths))
ComputeBasicGLSL_debug_lflags    += -Wl,--start-group $(addprefix -l, $(ComputeBasicGLSL_debug_libraries)) -Wl,--end-group
ComputeBasicGLSL_debug_lflags  += -Wl,--unresolved-symbols=ignore-in-shared-libs
ComputeBasicGLSL_debug_objsdir  := $(OBJS_DIR)/ComputeBasicGLSL_debug
ComputeBasicGLSL_debug_obj      := 
ComputeBasicGLSL_debug_cpp_o    = $(addprefix $(ComputeBasicGLSL_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(ComputeBasicGLSL_cppfiles)))))
ComputeBasicGLSL_debug_obj      += $(ComputeBasicGLSL_debug_cpp_o) 
ComputeBasicGLSL_debug_bin      := ./../../bin/linux-arm32/ComputeBasicGLSLD

clean_ComputeBasicGLSL_debug: 
	@$(ECHO) clean ComputeBasicGLSL debug
	@$(RMDIR) $(ComputeBasicGLSL_debug_objsdir)
	@$(RMDIR) $(ComputeBasicGLSL_debug_bin)

build_ComputeBasicGLSL_debug: postbuild_ComputeBasicGLSL_debug
postbuild_ComputeBasicGLSL_debug: mainbuild_ComputeBasicGLSL_debug
mainbuild_ComputeBasicGLSL_debug: prebuild_ComputeBasicGLSL_debug $(ComputeBasicGLSL_debug_bin)
prebuild_ComputeBasicGLSL_debug:

-include $(ComputeBasicGLSL_debug_cpp_o:%o=%d)

$(ComputeBasicGLSL_debug_bin): $(ComputeBasicGLSL_debug_obj) $(Half_debug_bin) $(NvAppBase_debug_bin) $(NvAssetLoader_debug_bin) $(NvGamepad_debug_bin) $(NvGLUtils_debug_bin) $(NvModel_debug_bin) $(NvUI_debug_bin) 
	@mkdir -p `dirname ./../../bin/linux-arm32/ComputeBasicGLSLD`
	$(CCLD) $^ $(ComputeBasicGLSL_debug_lflags) -o $(ComputeBasicGLSL_debug_bin) 
	@$(ECHO) building $@ complete!

$(ComputeBasicGLSL_debug_cpp_o): $(ComputeBasicGLSL_debug_objsdir)/%.o: 
	@$(ECHO) ComputeBasicGLSL: compiling debug $(filter %$*,$(ComputeBasicGLSL_cppfiles))...
	@mkdir -p $(dir $(@))
	$(CXX) $(ComputeBasicGLSL_debug_cflags) -MMD -MP -MF $(subst .cpp.o,.cpp.d,$@) -c $(filter %$*,$(ComputeBasicGLSL_cppfiles)) -o $@
ComputeBasicGLSL_release_hpaths    := 
ComputeBasicGLSL_release_hpaths    += ./../../es3aep-kepler/ComputeBasicGLSL/assets/shaders
ComputeBasicGLSL_release_hpaths    += ./../../es3aep-kepler/ComputeBasicGLSL
ComputeBasicGLSL_release_hpaths    += ./../../../extensions/include
ComputeBasicGLSL_release_hpaths    += ./../../../extensions/externals/include
ComputeBasicGLSL_release_hpaths    += ./../../../extensions/externals/include/GLFW
ComputeBasicGLSL_release_lpaths    := 
ComputeBasicGLSL_release_lpaths    += ./../../../extensions/externals/lib/linux-arm32
ComputeBasicGLSL_release_lpaths    += ./../../../extensions/lib/linux-arm32
ComputeBasicGLSL_release_lpaths    += ./../../../extensions/externals/lib/linux-arm32
ComputeBasicGLSL_release_lpaths    += ./../../../extensions/lib/linux-arm32
ComputeBasicGLSL_release_lpaths    += ./../../../extensions/lib/linux-arm32
ComputeBasicGLSL_release_lpaths    += ./../../../extensions/lib/linux-arm32
ComputeBasicGLSL_release_lpaths    += ./../../../extensions/lib/linux-arm32
ComputeBasicGLSL_release_lpaths    += ./../../../extensions/lib/linux-arm32
ComputeBasicGLSL_release_lpaths    += ./../../../extensions/lib/linux-arm32
ComputeBasicGLSL_release_defines   := $(ComputeBasicGLSL_custom_defines)
ComputeBasicGLSL_release_defines   += LINUX=1
ComputeBasicGLSL_release_defines   += GLEW_NO_GLU=1
ComputeBasicGLSL_release_defines   += NDEBUG
ComputeBasicGLSL_release_libraries := 
ComputeBasicGLSL_release_libraries += NvAppBase
ComputeBasicGLSL_release_libraries += NvUI
ComputeBasicGLSL_release_libraries += NvAssetLoader
ComputeBasicGLSL_release_libraries += NvModel
ComputeBasicGLSL_release_libraries += NvGLUtils
ComputeBasicGLSL_release_libraries += NvGamepad
ComputeBasicGLSL_release_libraries += Half
ComputeBasicGLSL_release_libraries += GLEW
ComputeBasicGLSL_release_libraries += glfw3
ComputeBasicGLSL_release_libraries += X11
ComputeBasicGLSL_release_libraries += Xrandr
ComputeBasicGLSL_release_libraries += Xi
ComputeBasicGLSL_release_libraries += rt
ComputeBasicGLSL_release_libraries += m
ComputeBasicGLSL_release_libraries += GL
ComputeBasicGLSL_release_libraries += dl
ComputeBasicGLSL_release_libraries += Xxf86vm
ComputeBasicGLSL_release_libraries += pthread
ComputeBasicGLSL_release_libraries += :libHalf.a
ComputeBasicGLSL_release_libraries += :libNvAppBase.a
ComputeBasicGLSL_release_libraries += :libNvAssetLoader.a
ComputeBasicGLSL_release_libraries += :libNvGamepad.a
ComputeBasicGLSL_release_libraries += :libNvGLUtils.a
ComputeBasicGLSL_release_libraries += :libNvModel.a
ComputeBasicGLSL_release_libraries += :libNvUI.a
ComputeBasicGLSL_release_cflags    := $(ComputeBasicGLSL_custom_cflags)
ComputeBasicGLSL_release_cflags    += $(addprefix -D, $(ComputeBasicGLSL_release_defines))
ComputeBasicGLSL_release_cflags    += $(addprefix -I, $(ComputeBasicGLSL_release_hpaths))
ComputeBasicGLSL_release_cflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function
ComputeBasicGLSL_release_cflags  += -Wno-reorder
ComputeBasicGLSL_release_cflags  += -funwind-tables -O2 -fno-omit-frame-pointer
ComputeBasicGLSL_release_lflags    := $(ComputeBasicGLSL_custom_lflags)
ComputeBasicGLSL_release_lflags    += $(addprefix -L, $(ComputeBasicGLSL_release_lpaths))
ComputeBasicGLSL_release_lflags    += -Wl,--start-group $(addprefix -l, $(ComputeBasicGLSL_release_libraries)) -Wl,--end-group
ComputeBasicGLSL_release_lflags  += -Wl,--unresolved-symbols=ignore-in-shared-libs
ComputeBasicGLSL_release_objsdir  := $(OBJS_DIR)/ComputeBasicGLSL_release
ComputeBasicGLSL_release_obj      := 
ComputeBasicGLSL_release_cpp_o    = $(addprefix $(ComputeBasicGLSL_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(ComputeBasicGLSL_cppfiles)))))
ComputeBasicGLSL_release_obj      += $(ComputeBasicGLSL_release_cpp_o) 
ComputeBasicGLSL_release_bin      := ./../../bin/linux-arm32/ComputeBasicGLSL

clean_ComputeBasicGLSL_release: 
	@$(ECHO) clean ComputeBasicGLSL release
	@$(RMDIR) $(ComputeBasicGLSL_release_objsdir)
	@$(RMDIR) $(ComputeBasicGLSL_release_bin)

build_ComputeBasicGLSL_release: postbuild_ComputeBasicGLSL_release
postbuild_ComputeBasicGLSL_release: mainbuild_ComputeBasicGLSL_release
mainbuild_ComputeBasicGLSL_release: prebuild_ComputeBasicGLSL_release $(ComputeBasicGLSL_release_bin)
prebuild_ComputeBasicGLSL_release:

-include $(ComputeBasicGLSL_release_cpp_o:%o=%d)

$(ComputeBasicGLSL_release_bin): $(ComputeBasicGLSL_release_obj) $(Half_release_bin) $(NvAppBase_release_bin) $(NvAssetLoader_release_bin) $(NvGamepad_release_bin) $(NvGLUtils_release_bin) $(NvModel_release_bin) $(NvUI_release_bin) 
	@mkdir -p `dirname ./../../bin/linux-arm32/ComputeBasicGLSL`
	$(CCLD) $^ $(ComputeBasicGLSL_release_lflags) -o $(ComputeBasicGLSL_release_bin) 
	@$(ECHO) building $@ complete!

$(ComputeBasicGLSL_release_cpp_o): $(ComputeBasicGLSL_release_objsdir)/%.o: 
	@$(ECHO) ComputeBasicGLSL: compiling release $(filter %$*,$(ComputeBasicGLSL_cppfiles))...
	@mkdir -p $(dir $(@))
	$(CXX) $(ComputeBasicGLSL_release_cflags) -MMD -MP -MF $(subst .cpp.o,.cpp.d,$@) -c $(filter %$*,$(ComputeBasicGLSL_cppfiles)) -o $@