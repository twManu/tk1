# Makefile generated by XPJ for linux-arm32
-include Makefile.custom
ProjectName = CascadedShadowMapping
CascadedShadowMapping_cppfiles   += ./../../gl4-maxwell/CascadedShadowMapping/CascadedShadowMapping.cpp
CascadedShadowMapping_cppfiles   += ./../../gl4-maxwell/CascadedShadowMapping/CascadedShadowMappingRenderer.cpp
CascadedShadowMapping_cppfiles   += ./../../gl4-maxwell/CascadedShadowMapping/KnightModel.cpp

CascadedShadowMapping_debug_hpaths    := 
CascadedShadowMapping_debug_hpaths    += ./../../gl4-maxwell/CascadedShadowMapping
CascadedShadowMapping_debug_hpaths    += ./../../../extensions/include
CascadedShadowMapping_debug_hpaths    += ./../../../extensions/externals/include
CascadedShadowMapping_debug_hpaths    += ./../../../extensions/externals/include/GLFW
CascadedShadowMapping_debug_lpaths    := 
CascadedShadowMapping_debug_lpaths    += ./../../../extensions/externals/lib/linux-arm32
CascadedShadowMapping_debug_lpaths    += ./../../../extensions/lib/linux-arm32
CascadedShadowMapping_debug_lpaths    += ./../../../extensions/externals/lib/linux-arm32
CascadedShadowMapping_debug_lpaths    += ./../../../extensions/lib/linux-arm32
CascadedShadowMapping_debug_lpaths    += ./../../../extensions/lib/linux-arm32
CascadedShadowMapping_debug_lpaths    += ./../../../extensions/lib/linux-arm32
CascadedShadowMapping_debug_lpaths    += ./../../../extensions/lib/linux-arm32
CascadedShadowMapping_debug_lpaths    += ./../../../extensions/lib/linux-arm32
CascadedShadowMapping_debug_lpaths    += ./../../../extensions/lib/linux-arm32
CascadedShadowMapping_debug_defines   := $(CascadedShadowMapping_custom_defines)
CascadedShadowMapping_debug_defines   += LINUX=1
CascadedShadowMapping_debug_defines   += GLEW_NO_GLU=1
CascadedShadowMapping_debug_defines   += _DEBUG
CascadedShadowMapping_debug_libraries := 
CascadedShadowMapping_debug_libraries += NvAppBaseD
CascadedShadowMapping_debug_libraries += NvUID
CascadedShadowMapping_debug_libraries += NvAssetLoaderD
CascadedShadowMapping_debug_libraries += NvModelD
CascadedShadowMapping_debug_libraries += NvGLUtilsD
CascadedShadowMapping_debug_libraries += NvGamepadD
CascadedShadowMapping_debug_libraries += HalfD
CascadedShadowMapping_debug_libraries += GLEW
CascadedShadowMapping_debug_libraries += glfw3
CascadedShadowMapping_debug_libraries += X11
CascadedShadowMapping_debug_libraries += Xrandr
CascadedShadowMapping_debug_libraries += Xi
CascadedShadowMapping_debug_libraries += rt
CascadedShadowMapping_debug_libraries += m
CascadedShadowMapping_debug_libraries += GL
CascadedShadowMapping_debug_libraries += dl
CascadedShadowMapping_debug_libraries += Xxf86vm
CascadedShadowMapping_debug_libraries += pthread
CascadedShadowMapping_debug_libraries += :libHalfD.a
CascadedShadowMapping_debug_libraries += :libNvAppBaseD.a
CascadedShadowMapping_debug_libraries += :libNvAssetLoaderD.a
CascadedShadowMapping_debug_libraries += :libNvGamepadD.a
CascadedShadowMapping_debug_libraries += :libNvGLUtilsD.a
CascadedShadowMapping_debug_libraries += :libNvModelD.a
CascadedShadowMapping_debug_libraries += :libNvUID.a
CascadedShadowMapping_debug_cflags    := $(CascadedShadowMapping_custom_cflags)
CascadedShadowMapping_debug_cflags    += $(addprefix -D, $(CascadedShadowMapping_debug_defines))
CascadedShadowMapping_debug_cflags    += $(addprefix -I, $(CascadedShadowMapping_debug_hpaths))
CascadedShadowMapping_debug_cflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function
CascadedShadowMapping_debug_cflags  += -Wno-reorder
CascadedShadowMapping_debug_cflags  += -std="gnu++0x"
CascadedShadowMapping_debug_cflags  += -funwind-tables -O0 -g -ggdb -fno-omit-frame-pointer
CascadedShadowMapping_debug_lflags    := $(CascadedShadowMapping_custom_lflags)
CascadedShadowMapping_debug_lflags    += $(addprefix -L, $(CascadedShadowMapping_debug_lpaths))
CascadedShadowMapping_debug_lflags    += -Wl,--start-group $(addprefix -l, $(CascadedShadowMapping_debug_libraries)) -Wl,--end-group
CascadedShadowMapping_debug_lflags  += -Wl,--unresolved-symbols=ignore-in-shared-libs
CascadedShadowMapping_debug_objsdir  := $(OBJS_DIR)/CascadedShadowMapping_debug
CascadedShadowMapping_debug_obj      := 
CascadedShadowMapping_debug_cpp_o    = $(addprefix $(CascadedShadowMapping_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(CascadedShadowMapping_cppfiles)))))
CascadedShadowMapping_debug_obj      += $(CascadedShadowMapping_debug_cpp_o) 
CascadedShadowMapping_debug_bin      := ./../../bin/linux-arm32/CascadedShadowMappingD

clean_CascadedShadowMapping_debug: 
	@$(ECHO) clean CascadedShadowMapping debug
	@$(RMDIR) $(CascadedShadowMapping_debug_objsdir)
	@$(RMDIR) $(CascadedShadowMapping_debug_bin)

build_CascadedShadowMapping_debug: postbuild_CascadedShadowMapping_debug
postbuild_CascadedShadowMapping_debug: mainbuild_CascadedShadowMapping_debug
mainbuild_CascadedShadowMapping_debug: prebuild_CascadedShadowMapping_debug $(CascadedShadowMapping_debug_bin)
prebuild_CascadedShadowMapping_debug:

-include $(CascadedShadowMapping_debug_cpp_o:%o=%d)

$(CascadedShadowMapping_debug_bin): $(CascadedShadowMapping_debug_obj) $(Half_debug_bin) $(NvAppBase_debug_bin) $(NvAssetLoader_debug_bin) $(NvGamepad_debug_bin) $(NvGLUtils_debug_bin) $(NvModel_debug_bin) $(NvUI_debug_bin) 
	@mkdir -p `dirname ./../../bin/linux-arm32/CascadedShadowMappingD`
	$(CCLD) $^ $(CascadedShadowMapping_debug_lflags) -o $(CascadedShadowMapping_debug_bin) 
	@$(ECHO) building $@ complete!

$(CascadedShadowMapping_debug_cpp_o): $(CascadedShadowMapping_debug_objsdir)/%.o: 
	@$(ECHO) CascadedShadowMapping: compiling debug $(filter %$*,$(CascadedShadowMapping_cppfiles))...
	@mkdir -p $(dir $(@))
	$(CXX) $(CascadedShadowMapping_debug_cflags) -MMD -MP -MF $(subst .cpp.o,.cpp.d,$@) -c $(filter %$*,$(CascadedShadowMapping_cppfiles)) -o $@
CascadedShadowMapping_release_hpaths    := 
CascadedShadowMapping_release_hpaths    += ./../../gl4-maxwell/CascadedShadowMapping
CascadedShadowMapping_release_hpaths    += ./../../../extensions/include
CascadedShadowMapping_release_hpaths    += ./../../../extensions/externals/include
CascadedShadowMapping_release_hpaths    += ./../../../extensions/externals/include/GLFW
CascadedShadowMapping_release_lpaths    := 
CascadedShadowMapping_release_lpaths    += ./../../../extensions/externals/lib/linux-arm32
CascadedShadowMapping_release_lpaths    += ./../../../extensions/lib/linux-arm32
CascadedShadowMapping_release_lpaths    += ./../../../extensions/externals/lib/linux-arm32
CascadedShadowMapping_release_lpaths    += ./../../../extensions/lib/linux-arm32
CascadedShadowMapping_release_lpaths    += ./../../../extensions/lib/linux-arm32
CascadedShadowMapping_release_lpaths    += ./../../../extensions/lib/linux-arm32
CascadedShadowMapping_release_lpaths    += ./../../../extensions/lib/linux-arm32
CascadedShadowMapping_release_lpaths    += ./../../../extensions/lib/linux-arm32
CascadedShadowMapping_release_lpaths    += ./../../../extensions/lib/linux-arm32
CascadedShadowMapping_release_defines   := $(CascadedShadowMapping_custom_defines)
CascadedShadowMapping_release_defines   += LINUX=1
CascadedShadowMapping_release_defines   += GLEW_NO_GLU=1
CascadedShadowMapping_release_defines   += NDEBUG
CascadedShadowMapping_release_libraries := 
CascadedShadowMapping_release_libraries += NvAppBase
CascadedShadowMapping_release_libraries += NvUI
CascadedShadowMapping_release_libraries += NvAssetLoader
CascadedShadowMapping_release_libraries += NvModel
CascadedShadowMapping_release_libraries += NvGLUtils
CascadedShadowMapping_release_libraries += NvGamepad
CascadedShadowMapping_release_libraries += Half
CascadedShadowMapping_release_libraries += GLEW
CascadedShadowMapping_release_libraries += glfw3
CascadedShadowMapping_release_libraries += X11
CascadedShadowMapping_release_libraries += Xrandr
CascadedShadowMapping_release_libraries += Xi
CascadedShadowMapping_release_libraries += rt
CascadedShadowMapping_release_libraries += m
CascadedShadowMapping_release_libraries += GL
CascadedShadowMapping_release_libraries += dl
CascadedShadowMapping_release_libraries += Xxf86vm
CascadedShadowMapping_release_libraries += pthread
CascadedShadowMapping_release_libraries += :libHalf.a
CascadedShadowMapping_release_libraries += :libNvAppBase.a
CascadedShadowMapping_release_libraries += :libNvAssetLoader.a
CascadedShadowMapping_release_libraries += :libNvGamepad.a
CascadedShadowMapping_release_libraries += :libNvGLUtils.a
CascadedShadowMapping_release_libraries += :libNvModel.a
CascadedShadowMapping_release_libraries += :libNvUI.a
CascadedShadowMapping_release_cflags    := $(CascadedShadowMapping_custom_cflags)
CascadedShadowMapping_release_cflags    += $(addprefix -D, $(CascadedShadowMapping_release_defines))
CascadedShadowMapping_release_cflags    += $(addprefix -I, $(CascadedShadowMapping_release_hpaths))
CascadedShadowMapping_release_cflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function
CascadedShadowMapping_release_cflags  += -Wno-reorder
CascadedShadowMapping_release_cflags  += -std="gnu++0x"
CascadedShadowMapping_release_cflags  += -funwind-tables -O2 -fno-omit-frame-pointer
CascadedShadowMapping_release_lflags    := $(CascadedShadowMapping_custom_lflags)
CascadedShadowMapping_release_lflags    += $(addprefix -L, $(CascadedShadowMapping_release_lpaths))
CascadedShadowMapping_release_lflags    += -Wl,--start-group $(addprefix -l, $(CascadedShadowMapping_release_libraries)) -Wl,--end-group
CascadedShadowMapping_release_lflags  += -Wl,--unresolved-symbols=ignore-in-shared-libs
CascadedShadowMapping_release_objsdir  := $(OBJS_DIR)/CascadedShadowMapping_release
CascadedShadowMapping_release_obj      := 
CascadedShadowMapping_release_cpp_o    = $(addprefix $(CascadedShadowMapping_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(CascadedShadowMapping_cppfiles)))))
CascadedShadowMapping_release_obj      += $(CascadedShadowMapping_release_cpp_o) 
CascadedShadowMapping_release_bin      := ./../../bin/linux-arm32/CascadedShadowMapping

clean_CascadedShadowMapping_release: 
	@$(ECHO) clean CascadedShadowMapping release
	@$(RMDIR) $(CascadedShadowMapping_release_objsdir)
	@$(RMDIR) $(CascadedShadowMapping_release_bin)

build_CascadedShadowMapping_release: postbuild_CascadedShadowMapping_release
postbuild_CascadedShadowMapping_release: mainbuild_CascadedShadowMapping_release
mainbuild_CascadedShadowMapping_release: prebuild_CascadedShadowMapping_release $(CascadedShadowMapping_release_bin)
prebuild_CascadedShadowMapping_release:

-include $(CascadedShadowMapping_release_cpp_o:%o=%d)

$(CascadedShadowMapping_release_bin): $(CascadedShadowMapping_release_obj) $(Half_release_bin) $(NvAppBase_release_bin) $(NvAssetLoader_release_bin) $(NvGamepad_release_bin) $(NvGLUtils_release_bin) $(NvModel_release_bin) $(NvUI_release_bin) 
	@mkdir -p `dirname ./../../bin/linux-arm32/CascadedShadowMapping`
	$(CCLD) $^ $(CascadedShadowMapping_release_lflags) -o $(CascadedShadowMapping_release_bin) 
	@$(ECHO) building $@ complete!

$(CascadedShadowMapping_release_cpp_o): $(CascadedShadowMapping_release_objsdir)/%.o: 
	@$(ECHO) CascadedShadowMapping: compiling release $(filter %$*,$(CascadedShadowMapping_cppfiles))...
	@mkdir -p $(dir $(@))
	$(CXX) $(CascadedShadowMapping_release_cflags) -MMD -MP -MF $(subst .cpp.o,.cpp.d,$@) -c $(filter %$*,$(CascadedShadowMapping_cppfiles)) -o $@
