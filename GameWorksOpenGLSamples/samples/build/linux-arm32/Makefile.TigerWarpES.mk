# Makefile generated by XPJ for linux-arm32
-include Makefile.custom
ProjectName = TigerWarpES
TigerWarpES_cppfiles   += ./../../nvpr/TigerWarpES/TigerWarp.cpp
TigerWarpES_cppfiles   += ./../../nvpr/TigerWarpES/cg4cpp_xform.cpp
TigerWarpES_cppfiles   += ./../../nvpr/TigerWarpES/tiger.cpp

TigerWarpES_debug_hpaths    := 
TigerWarpES_debug_hpaths    += ./../../nvpr/TigerWarpES
TigerWarpES_debug_hpaths    += ./../../../extensions/include
TigerWarpES_debug_hpaths    += ./../../../extensions/externals/include
TigerWarpES_debug_hpaths    += ./../../../extensions/externals/include/GLFW
TigerWarpES_debug_lpaths    := 
TigerWarpES_debug_lpaths    += ./../../../extensions/externals/lib/linux-arm32
TigerWarpES_debug_lpaths    += ./../../../extensions/lib/linux-arm32
TigerWarpES_debug_lpaths    += ./../../../extensions/externals/lib/linux-arm32
TigerWarpES_debug_lpaths    += ./../../../extensions/externals/lib/linux-arm32
TigerWarpES_debug_lpaths    += ./../../../extensions/lib/linux-arm32
TigerWarpES_debug_lpaths    += ./../../../extensions/lib/linux-arm32
TigerWarpES_debug_lpaths    += ./../../../extensions/lib/linux-arm32
TigerWarpES_debug_lpaths    += ./../../../extensions/lib/linux-arm32
TigerWarpES_debug_lpaths    += ./../../../extensions/lib/linux-arm32
TigerWarpES_debug_lpaths    += ./../../../extensions/lib/linux-arm32
TigerWarpES_debug_defines   := $(TigerWarpES_custom_defines)
TigerWarpES_debug_defines   += LINUX=1
TigerWarpES_debug_defines   += GLEW_NO_GLU=1
TigerWarpES_debug_defines   += _DEBUG
TigerWarpES_debug_libraries := 
TigerWarpES_debug_libraries += NvAppBaseD
TigerWarpES_debug_libraries += NvUID
TigerWarpES_debug_libraries += NvAssetLoaderD
TigerWarpES_debug_libraries += NvModelD
TigerWarpES_debug_libraries += NvGLUtilsD
TigerWarpES_debug_libraries += NvGamepadD
TigerWarpES_debug_libraries += HalfD
TigerWarpES_debug_libraries += GLEW
TigerWarpES_debug_libraries += glfw3
TigerWarpES_debug_libraries += X11
TigerWarpES_debug_libraries += Xrandr
TigerWarpES_debug_libraries += Xi
TigerWarpES_debug_libraries += rt
TigerWarpES_debug_libraries += m
TigerWarpES_debug_libraries += GL
TigerWarpES_debug_libraries += dl
TigerWarpES_debug_libraries += Xxf86vm
TigerWarpES_debug_libraries += pthread
TigerWarpES_debug_libraries += :libcg4cppD.a
TigerWarpES_debug_libraries += :libHalfD.a
TigerWarpES_debug_libraries += :libNvAppBaseD.a
TigerWarpES_debug_libraries += :libNvAssetLoaderD.a
TigerWarpES_debug_libraries += :libNvGamepadD.a
TigerWarpES_debug_libraries += :libNvGLUtilsD.a
TigerWarpES_debug_libraries += :libNvModelD.a
TigerWarpES_debug_libraries += :libNvUID.a
TigerWarpES_debug_cflags    := $(TigerWarpES_custom_cflags)
TigerWarpES_debug_cflags    += $(addprefix -D, $(TigerWarpES_debug_defines))
TigerWarpES_debug_cflags    += $(addprefix -I, $(TigerWarpES_debug_hpaths))
TigerWarpES_debug_cflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function
TigerWarpES_debug_cflags  += -Wno-reorder
TigerWarpES_debug_cflags  += -funwind-tables -O0 -g -ggdb -fno-omit-frame-pointer
TigerWarpES_debug_lflags    := $(TigerWarpES_custom_lflags)
TigerWarpES_debug_lflags    += $(addprefix -L, $(TigerWarpES_debug_lpaths))
TigerWarpES_debug_lflags    += -Wl,--start-group $(addprefix -l, $(TigerWarpES_debug_libraries)) -Wl,--end-group
TigerWarpES_debug_lflags  += -Wl,--unresolved-symbols=ignore-in-shared-libs
TigerWarpES_debug_objsdir  := $(OBJS_DIR)/TigerWarpES_debug
TigerWarpES_debug_obj      := 
TigerWarpES_debug_cpp_o    = $(addprefix $(TigerWarpES_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(TigerWarpES_cppfiles)))))
TigerWarpES_debug_obj      += $(TigerWarpES_debug_cpp_o) 
TigerWarpES_debug_bin      := ./../../bin/linux-arm32/TigerWarpESD

clean_TigerWarpES_debug: 
	@$(ECHO) clean TigerWarpES debug
	@$(RMDIR) $(TigerWarpES_debug_objsdir)
	@$(RMDIR) $(TigerWarpES_debug_bin)

build_TigerWarpES_debug: postbuild_TigerWarpES_debug
postbuild_TigerWarpES_debug: mainbuild_TigerWarpES_debug
mainbuild_TigerWarpES_debug: prebuild_TigerWarpES_debug $(TigerWarpES_debug_bin)
prebuild_TigerWarpES_debug:

-include $(TigerWarpES_debug_cpp_o:%o=%d)

$(TigerWarpES_debug_bin): $(TigerWarpES_debug_obj) $(cg4cpp_debug_bin) $(Half_debug_bin) $(NvAppBase_debug_bin) $(NvAssetLoader_debug_bin) $(NvGamepad_debug_bin) $(NvGLUtils_debug_bin) $(NvModel_debug_bin) $(NvUI_debug_bin) 
	@mkdir -p `dirname ./../../bin/linux-arm32/TigerWarpESD`
	$(CCLD) $^ $(TigerWarpES_debug_lflags) -o $(TigerWarpES_debug_bin) 
	@$(ECHO) building $@ complete!

$(TigerWarpES_debug_cpp_o): $(TigerWarpES_debug_objsdir)/%.o: 
	@$(ECHO) TigerWarpES: compiling debug $(filter %$*,$(TigerWarpES_cppfiles))...
	@mkdir -p $(dir $(@))
	$(CXX) $(TigerWarpES_debug_cflags) -MMD -MP -MF $(subst .cpp.o,.cpp.d,$@) -c $(filter %$*,$(TigerWarpES_cppfiles)) -o $@
TigerWarpES_release_hpaths    := 
TigerWarpES_release_hpaths    += ./../../nvpr/TigerWarpES
TigerWarpES_release_hpaths    += ./../../../extensions/include
TigerWarpES_release_hpaths    += ./../../../extensions/externals/include
TigerWarpES_release_hpaths    += ./../../../extensions/externals/include/GLFW
TigerWarpES_release_lpaths    := 
TigerWarpES_release_lpaths    += ./../../../extensions/externals/lib/linux-arm32
TigerWarpES_release_lpaths    += ./../../../extensions/lib/linux-arm32
TigerWarpES_release_lpaths    += ./../../../extensions/externals/lib/linux-arm32
TigerWarpES_release_lpaths    += ./../../../extensions/externals/lib/linux-arm32
TigerWarpES_release_lpaths    += ./../../../extensions/lib/linux-arm32
TigerWarpES_release_lpaths    += ./../../../extensions/lib/linux-arm32
TigerWarpES_release_lpaths    += ./../../../extensions/lib/linux-arm32
TigerWarpES_release_lpaths    += ./../../../extensions/lib/linux-arm32
TigerWarpES_release_lpaths    += ./../../../extensions/lib/linux-arm32
TigerWarpES_release_lpaths    += ./../../../extensions/lib/linux-arm32
TigerWarpES_release_defines   := $(TigerWarpES_custom_defines)
TigerWarpES_release_defines   += LINUX=1
TigerWarpES_release_defines   += GLEW_NO_GLU=1
TigerWarpES_release_defines   += NDEBUG
TigerWarpES_release_libraries := 
TigerWarpES_release_libraries += NvAppBase
TigerWarpES_release_libraries += NvUI
TigerWarpES_release_libraries += NvAssetLoader
TigerWarpES_release_libraries += NvModel
TigerWarpES_release_libraries += NvGLUtils
TigerWarpES_release_libraries += NvGamepad
TigerWarpES_release_libraries += Half
TigerWarpES_release_libraries += GLEW
TigerWarpES_release_libraries += glfw3
TigerWarpES_release_libraries += X11
TigerWarpES_release_libraries += Xrandr
TigerWarpES_release_libraries += Xi
TigerWarpES_release_libraries += rt
TigerWarpES_release_libraries += m
TigerWarpES_release_libraries += GL
TigerWarpES_release_libraries += dl
TigerWarpES_release_libraries += Xxf86vm
TigerWarpES_release_libraries += pthread
TigerWarpES_release_libraries += :libcg4cpp.a
TigerWarpES_release_libraries += :libHalf.a
TigerWarpES_release_libraries += :libNvAppBase.a
TigerWarpES_release_libraries += :libNvAssetLoader.a
TigerWarpES_release_libraries += :libNvGamepad.a
TigerWarpES_release_libraries += :libNvGLUtils.a
TigerWarpES_release_libraries += :libNvModel.a
TigerWarpES_release_libraries += :libNvUI.a
TigerWarpES_release_cflags    := $(TigerWarpES_custom_cflags)
TigerWarpES_release_cflags    += $(addprefix -D, $(TigerWarpES_release_defines))
TigerWarpES_release_cflags    += $(addprefix -I, $(TigerWarpES_release_hpaths))
TigerWarpES_release_cflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function
TigerWarpES_release_cflags  += -Wno-reorder
TigerWarpES_release_cflags  += -funwind-tables -O2 -fno-omit-frame-pointer
TigerWarpES_release_lflags    := $(TigerWarpES_custom_lflags)
TigerWarpES_release_lflags    += $(addprefix -L, $(TigerWarpES_release_lpaths))
TigerWarpES_release_lflags    += -Wl,--start-group $(addprefix -l, $(TigerWarpES_release_libraries)) -Wl,--end-group
TigerWarpES_release_lflags  += -Wl,--unresolved-symbols=ignore-in-shared-libs
TigerWarpES_release_objsdir  := $(OBJS_DIR)/TigerWarpES_release
TigerWarpES_release_obj      := 
TigerWarpES_release_cpp_o    = $(addprefix $(TigerWarpES_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(TigerWarpES_cppfiles)))))
TigerWarpES_release_obj      += $(TigerWarpES_release_cpp_o) 
TigerWarpES_release_bin      := ./../../bin/linux-arm32/TigerWarpES

clean_TigerWarpES_release: 
	@$(ECHO) clean TigerWarpES release
	@$(RMDIR) $(TigerWarpES_release_objsdir)
	@$(RMDIR) $(TigerWarpES_release_bin)

build_TigerWarpES_release: postbuild_TigerWarpES_release
postbuild_TigerWarpES_release: mainbuild_TigerWarpES_release
mainbuild_TigerWarpES_release: prebuild_TigerWarpES_release $(TigerWarpES_release_bin)
prebuild_TigerWarpES_release:

-include $(TigerWarpES_release_cpp_o:%o=%d)

$(TigerWarpES_release_bin): $(TigerWarpES_release_obj) $(cg4cpp_release_bin) $(Half_release_bin) $(NvAppBase_release_bin) $(NvAssetLoader_release_bin) $(NvGamepad_release_bin) $(NvGLUtils_release_bin) $(NvModel_release_bin) $(NvUI_release_bin) 
	@mkdir -p `dirname ./../../bin/linux-arm32/TigerWarpES`
	$(CCLD) $^ $(TigerWarpES_release_lflags) -o $(TigerWarpES_release_bin) 
	@$(ECHO) building $@ complete!

$(TigerWarpES_release_cpp_o): $(TigerWarpES_release_objsdir)/%.o: 
	@$(ECHO) TigerWarpES: compiling release $(filter %$*,$(TigerWarpES_cppfiles))...
	@mkdir -p $(dir $(@))
	$(CXX) $(TigerWarpES_release_cflags) -MMD -MP -MF $(subst .cpp.o,.cpp.d,$@) -c $(filter %$*,$(TigerWarpES_cppfiles)) -o $@
