# Makefile generated by XPJ for linux-arm32
-include Makefile.custom
ProjectName = NvModel
NvModel_cppfiles   += ./../../src/NvModel/NvGLModel.cpp
NvModel_cppfiles   += ./../../src/NvModel/NvModel.cpp
NvModel_cppfiles   += ./../../src/NvModel/NvModelObj.cpp
NvModel_cppfiles   += ./../../src/NvModel/NvModelQuery.cpp
NvModel_cppfiles   += ./../../src/NvModel/NvShapes.cpp

NvModel_debug_hpaths    := 
NvModel_debug_hpaths    += ./../../src/NvModel
NvModel_debug_hpaths    += ./../../include
NvModel_debug_hpaths    += ./../../externals/include
NvModel_debug_hpaths    += ./../../externals/include/GLFW
NvModel_debug_lpaths    := 
NvModel_debug_defines   := $(NvModel_custom_defines)
NvModel_debug_defines   += LINUX=1
NvModel_debug_defines   += _LIB
NvModel_debug_defines   += GLEW_NO_GLU=1
NvModel_debug_defines   += _DEBUG
NvModel_debug_libraries := 
NvModel_debug_libraries += pthread
NvModel_debug_libraries += glfw3
NvModel_debug_cflags    := $(NvModel_custom_cflags)
NvModel_debug_cflags    += $(addprefix -D, $(NvModel_debug_defines))
NvModel_debug_cflags    += $(addprefix -I, $(NvModel_debug_hpaths))
NvModel_debug_cflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function
NvModel_debug_cflags  += -Wno-reorder
NvModel_debug_cflags  += -funwind-tables -O0 -g -ggdb -fno-omit-frame-pointer
NvModel_debug_lflags    := $(NvModel_custom_lflags)
NvModel_debug_lflags    += $(addprefix -L, $(NvModel_debug_lpaths))
NvModel_debug_lflags    += -Wl,--start-group $(addprefix -l, $(NvModel_debug_libraries)) -Wl,--end-group
NvModel_debug_objsdir  := $(OBJS_DIR)/NvModel_debug
NvModel_debug_obj      := 
NvModel_debug_cpp_o    = $(addprefix $(NvModel_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(NvModel_cppfiles)))))
NvModel_debug_obj      += $(NvModel_debug_cpp_o) 
NvModel_debug_bin      := ./../../lib/linux-arm32/libNvModelD.a

clean_NvModel_debug: 
	@$(ECHO) clean NvModel debug
	@$(RMDIR) $(NvModel_debug_objsdir)
	@$(RMDIR) $(NvModel_debug_bin)

build_NvModel_debug: postbuild_NvModel_debug
postbuild_NvModel_debug: mainbuild_NvModel_debug
mainbuild_NvModel_debug: prebuild_NvModel_debug $(NvModel_debug_bin)
prebuild_NvModel_debug:

-include $(NvModel_debug_cpp_o:%o=%d)

$(NvModel_debug_bin): $(NvModel_debug_obj) 
	@mkdir -p `dirname ./../../lib/linux-arm32/libNvModelD.a`
	@$(AR) r $(NvModel_debug_bin) $^
	@$(RANLIB) $(NvModel_debug_bin)
	@$(ECHO) building $@ complete!

$(NvModel_debug_cpp_o): $(NvModel_debug_objsdir)/%.o: 
	@$(ECHO) NvModel: compiling debug $(filter %$*,$(NvModel_cppfiles))...
	@mkdir -p $(dir $(@))
	$(CXX) $(NvModel_debug_cflags) -MMD -MP -MF $(subst .cpp.o,.cpp.d,$@) -c $(filter %$*,$(NvModel_cppfiles)) -o $@
NvModel_release_hpaths    := 
NvModel_release_hpaths    += ./../../src/NvModel
NvModel_release_hpaths    += ./../../include
NvModel_release_hpaths    += ./../../externals/include
NvModel_release_hpaths    += ./../../externals/include/GLFW
NvModel_release_lpaths    := 
NvModel_release_defines   := $(NvModel_custom_defines)
NvModel_release_defines   += LINUX=1
NvModel_release_defines   += _LIB
NvModel_release_defines   += GLEW_NO_GLU=1
NvModel_release_defines   += NDEBUG
NvModel_release_libraries := 
NvModel_release_libraries += pthread
NvModel_release_libraries += glfw3
NvModel_release_cflags    := $(NvModel_custom_cflags)
NvModel_release_cflags    += $(addprefix -D, $(NvModel_release_defines))
NvModel_release_cflags    += $(addprefix -I, $(NvModel_release_hpaths))
NvModel_release_cflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function
NvModel_release_cflags  += -Wno-reorder
NvModel_release_cflags  += -funwind-tables -O2 -fno-omit-frame-pointer
NvModel_release_lflags    := $(NvModel_custom_lflags)
NvModel_release_lflags    += $(addprefix -L, $(NvModel_release_lpaths))
NvModel_release_lflags    += -Wl,--start-group $(addprefix -l, $(NvModel_release_libraries)) -Wl,--end-group
NvModel_release_objsdir  := $(OBJS_DIR)/NvModel_release
NvModel_release_obj      := 
NvModel_release_cpp_o    = $(addprefix $(NvModel_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(NvModel_cppfiles)))))
NvModel_release_obj      += $(NvModel_release_cpp_o) 
NvModel_release_bin      := ./../../lib/linux-arm32/libNvModel.a

clean_NvModel_release: 
	@$(ECHO) clean NvModel release
	@$(RMDIR) $(NvModel_release_objsdir)
	@$(RMDIR) $(NvModel_release_bin)

build_NvModel_release: postbuild_NvModel_release
postbuild_NvModel_release: mainbuild_NvModel_release
mainbuild_NvModel_release: prebuild_NvModel_release $(NvModel_release_bin)
prebuild_NvModel_release:

-include $(NvModel_release_cpp_o:%o=%d)

$(NvModel_release_bin): $(NvModel_release_obj) 
	@mkdir -p `dirname ./../../lib/linux-arm32/libNvModel.a`
	@$(AR) r $(NvModel_release_bin) $^
	@$(RANLIB) $(NvModel_release_bin)
	@$(ECHO) building $@ complete!

$(NvModel_release_cpp_o): $(NvModel_release_objsdir)/%.o: 
	@$(ECHO) NvModel: compiling release $(filter %$*,$(NvModel_cppfiles))...
	@mkdir -p $(dir $(@))
	$(CXX) $(NvModel_release_cflags) -MMD -MP -MF $(subst .cpp.o,.cpp.d,$@) -c $(filter %$*,$(NvModel_cppfiles)) -o $@