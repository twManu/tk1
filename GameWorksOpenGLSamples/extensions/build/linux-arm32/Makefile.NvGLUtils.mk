# Makefile generated by XPJ for linux-arm32
-include Makefile.custom
ProjectName = NvGLUtils
NvGLUtils_cppfiles   += ./../../src/NvGLUtils/BlockDXT.cpp
NvGLUtils_cppfiles   += ./../../src/NvGLUtils/ColorBlock.cpp
NvGLUtils_cppfiles   += ./../../src/NvGLUtils/NvFilePtr.cpp
NvGLUtils_cppfiles   += ./../../src/NvGLUtils/NvGLSLProgram.cpp
NvGLUtils_cppfiles   += ./../../src/NvGLUtils/NvImage.cpp
NvGLUtils_cppfiles   += ./../../src/NvGLUtils/NvImageDDS.cpp
NvGLUtils_cppfiles   += ./../../src/NvGLUtils/NvImageGL.cpp
NvGLUtils_cppfiles   += ./../../src/NvGLUtils/NvTimers.cpp

NvGLUtils_debug_hpaths    := 
NvGLUtils_debug_hpaths    += ./../../src/NvGLUtils
NvGLUtils_debug_hpaths    += ./../../include
NvGLUtils_debug_hpaths    += ./../../externals/include
NvGLUtils_debug_hpaths    += ./../../externals/include/GLFW
NvGLUtils_debug_lpaths    := 
NvGLUtils_debug_defines   := $(NvGLUtils_custom_defines)
NvGLUtils_debug_defines   += LINUX=1
NvGLUtils_debug_defines   += _LIB
NvGLUtils_debug_defines   += GLEW_NO_GLU=1
NvGLUtils_debug_defines   += _DEBUG
NvGLUtils_debug_libraries := 
NvGLUtils_debug_libraries += pthread
NvGLUtils_debug_libraries += glfw3
NvGLUtils_debug_cflags    := $(NvGLUtils_custom_cflags)
NvGLUtils_debug_cflags    += $(addprefix -D, $(NvGLUtils_debug_defines))
NvGLUtils_debug_cflags    += $(addprefix -I, $(NvGLUtils_debug_hpaths))
NvGLUtils_debug_cflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function
NvGLUtils_debug_cflags  += -Wno-reorder
NvGLUtils_debug_cflags  += -funwind-tables -O0 -g -ggdb -fno-omit-frame-pointer
NvGLUtils_debug_lflags    := $(NvGLUtils_custom_lflags)
NvGLUtils_debug_lflags    += $(addprefix -L, $(NvGLUtils_debug_lpaths))
NvGLUtils_debug_lflags    += -Wl,--start-group $(addprefix -l, $(NvGLUtils_debug_libraries)) -Wl,--end-group
NvGLUtils_debug_objsdir  := $(OBJS_DIR)/NvGLUtils_debug
NvGLUtils_debug_obj      := 
NvGLUtils_debug_cpp_o    = $(addprefix $(NvGLUtils_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(NvGLUtils_cppfiles)))))
NvGLUtils_debug_obj      += $(NvGLUtils_debug_cpp_o) 
NvGLUtils_debug_bin      := ./../../lib/linux-arm32/libNvGLUtilsD.a

clean_NvGLUtils_debug: 
	@$(ECHO) clean NvGLUtils debug
	@$(RMDIR) $(NvGLUtils_debug_objsdir)
	@$(RMDIR) $(NvGLUtils_debug_bin)

build_NvGLUtils_debug: postbuild_NvGLUtils_debug
postbuild_NvGLUtils_debug: mainbuild_NvGLUtils_debug
mainbuild_NvGLUtils_debug: prebuild_NvGLUtils_debug $(NvGLUtils_debug_bin)
prebuild_NvGLUtils_debug:

-include $(NvGLUtils_debug_cpp_o:%o=%d)

$(NvGLUtils_debug_bin): $(NvGLUtils_debug_obj) 
	@mkdir -p `dirname ./../../lib/linux-arm32/libNvGLUtilsD.a`
	@$(AR) r $(NvGLUtils_debug_bin) $^
	@$(RANLIB) $(NvGLUtils_debug_bin)
	@$(ECHO) building $@ complete!

$(NvGLUtils_debug_cpp_o): $(NvGLUtils_debug_objsdir)/%.o: 
	@$(ECHO) NvGLUtils: compiling debug $(filter %$*,$(NvGLUtils_cppfiles))...
	@mkdir -p $(dir $(@))
	$(CXX) $(NvGLUtils_debug_cflags) -MMD -MP -MF $(subst .cpp.o,.cpp.d,$@) -c $(filter %$*,$(NvGLUtils_cppfiles)) -o $@
NvGLUtils_release_hpaths    := 
NvGLUtils_release_hpaths    += ./../../src/NvGLUtils
NvGLUtils_release_hpaths    += ./../../include
NvGLUtils_release_hpaths    += ./../../externals/include
NvGLUtils_release_hpaths    += ./../../externals/include/GLFW
NvGLUtils_release_lpaths    := 
NvGLUtils_release_defines   := $(NvGLUtils_custom_defines)
NvGLUtils_release_defines   += LINUX=1
NvGLUtils_release_defines   += _LIB
NvGLUtils_release_defines   += GLEW_NO_GLU=1
NvGLUtils_release_defines   += NDEBUG
NvGLUtils_release_libraries := 
NvGLUtils_release_libraries += pthread
NvGLUtils_release_libraries += glfw3
NvGLUtils_release_cflags    := $(NvGLUtils_custom_cflags)
NvGLUtils_release_cflags    += $(addprefix -D, $(NvGLUtils_release_defines))
NvGLUtils_release_cflags    += $(addprefix -I, $(NvGLUtils_release_hpaths))
NvGLUtils_release_cflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function
NvGLUtils_release_cflags  += -Wno-reorder
NvGLUtils_release_cflags  += -funwind-tables -O2 -fno-omit-frame-pointer
NvGLUtils_release_lflags    := $(NvGLUtils_custom_lflags)
NvGLUtils_release_lflags    += $(addprefix -L, $(NvGLUtils_release_lpaths))
NvGLUtils_release_lflags    += -Wl,--start-group $(addprefix -l, $(NvGLUtils_release_libraries)) -Wl,--end-group
NvGLUtils_release_objsdir  := $(OBJS_DIR)/NvGLUtils_release
NvGLUtils_release_obj      := 
NvGLUtils_release_cpp_o    = $(addprefix $(NvGLUtils_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(NvGLUtils_cppfiles)))))
NvGLUtils_release_obj      += $(NvGLUtils_release_cpp_o) 
NvGLUtils_release_bin      := ./../../lib/linux-arm32/libNvGLUtils.a

clean_NvGLUtils_release: 
	@$(ECHO) clean NvGLUtils release
	@$(RMDIR) $(NvGLUtils_release_objsdir)
	@$(RMDIR) $(NvGLUtils_release_bin)

build_NvGLUtils_release: postbuild_NvGLUtils_release
postbuild_NvGLUtils_release: mainbuild_NvGLUtils_release
mainbuild_NvGLUtils_release: prebuild_NvGLUtils_release $(NvGLUtils_release_bin)
prebuild_NvGLUtils_release:

-include $(NvGLUtils_release_cpp_o:%o=%d)

$(NvGLUtils_release_bin): $(NvGLUtils_release_obj) 
	@mkdir -p `dirname ./../../lib/linux-arm32/libNvGLUtils.a`
	@$(AR) r $(NvGLUtils_release_bin) $^
	@$(RANLIB) $(NvGLUtils_release_bin)
	@$(ECHO) building $@ complete!

$(NvGLUtils_release_cpp_o): $(NvGLUtils_release_objsdir)/%.o: 
	@$(ECHO) NvGLUtils: compiling release $(filter %$*,$(NvGLUtils_cppfiles))...
	@mkdir -p $(dir $(@))
	$(CXX) $(NvGLUtils_release_cflags) -MMD -MP -MF $(subst .cpp.o,.cpp.d,$@) -c $(filter %$*,$(NvGLUtils_cppfiles)) -o $@