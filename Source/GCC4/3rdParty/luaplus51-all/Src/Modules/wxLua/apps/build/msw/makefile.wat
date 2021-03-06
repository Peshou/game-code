# =========================================================================
#     This makefile was generated by
#     Bakefile 0.2.3 (http://www.bakefile.org)
#     Do not modify, all changes will be overwritten!
# =========================================================================



# -------------------------------------------------------------------------
# These are configurable options:
# -------------------------------------------------------------------------

# C compiler 
CC = wcc386

# C++ compiler 
CXX = wpp386

# Standard flags for CC 
CFLAGS = 

# Standard flags for C++ 
CXXFLAGS = 

# Standard preprocessor flags (common for CC and CXX) 
CPPFLAGS = 

# Standard linker flags 
LDFLAGS = 

# Builds in debug mode [debug,release]
BUILD = debug

# Builds in Unicode mode [0,1]
#   1 - Unicode
UNICODE = 0

# Builds in shared mode [0,1]
#   1 - DLL
SHARED = 0

# Use DLL build of wx library? [0,1]
#   0 - Static
#   1 - DLL
WX_SHARED = 0

# Version of the wx library to build against. 
WX_VERSION = 28

# Use monolithic build of wxWidgets? [0,1]
#   0 - Multilib
#   1 - Monolithic
WX_MONOLITHIC = 0

# The directory where wxWidgets library is installed 
WX_DIR = $(%WXWIN)

# Should wxLua use the system-wide Lua library ? [0,1]
USE_SYSTEM_LUA = 0

# The path to the Lua library includes 
LUA_INCLUDE_DIR = ..\..\..\modules\lua\include

# The path to the Lua library libs 
LUA_LIB_DIR = ..\..\..\modules\lua\lib

# This is an advanced option. Handle with care.
# Version of C runtime library to use. You can change this to
# static if SHARED=0, but it is highly recommended to not do
# it if SHARED=1 unless you know what you are doing. [dynamic,static]
RUNTIME_LIBS = dynamic

# This is an advanced option. Handle with care.
# The thread model to use: use 'multi' default to allow
# multi-threading. [multi,single]
THREADING = multi

# Do the wxLua bindings for the wxAdv lib need to be compiled ? [0,1]
USE_WXBINDADV = 1

# Do the wxLua bindings for the wxAUI lib need to be compiled ? [0,1]
USE_WXBINDAUI = 1

# Do the wxLua bindings for the wxBase lib need to be compiled ? [0,1]
USE_WXBINDBASE = 1

# Do the wxLua bindings for the wxCore lib need to be compiled ? [0,1]
USE_WXBINDCORE = 1

# Do the wxLua bindings for the wxGL lib need to be compiled ? [0,1]
USE_WXBINDGL = 1

# Do the wxLua bindings for the wxHTML lib need to be compiled ? [0,1]
USE_WXBINDHTML = 1

# Do the wxLua bindings for the wxMedia lib need to be compiled ? [0,1]
USE_WXBINDMEDIA = 1

# Do the wxLua bindings for the wxNet lib need to be compiled ? [0,1]
USE_WXBINDNET = 1

# Do the wxLua bindings for the wxRichText lib need to be compiled ? [0,1]
USE_WXBINDRICHTEXT = 0

# Do the wxLua bindings for wxSTC need to be compiled ? [0,1]
USE_WXBINDSTC = 1

# Do the wxLua bindings for wxXML need to be compiled ? [0,1]
USE_WXBINDXML = 1

# Do the wxLua bindings for wxXRC need to be compiled ? [0,1]
USE_WXBINDXRC = 1

# Does the wxLua debug support need to be compiled ? [0,1]
USE_WXLUADEBUG = 1

# Compile the wxLua app ? [0,1]
USE_WXLUAAPP = 1

# Compile the wxLuaCan app ? [0,1]
USE_WXLUACANAPP = 1

# The path to the wxStEdit component (meaningful only when USE_WXLUAEDITAPP==1) 
WXSTEDIT_DIR = $(%WXSTEDIT)

# Compile the wxLuaEditor app ? [0,1]
USE_WXLUAEDITAPP = 0

# Compile the wxLuaFreeze app ? [0,1]
USE_WXLUAFREEZEAPP = 1



# -------------------------------------------------------------------------
# Do not modify the rest of this file!
# -------------------------------------------------------------------------

# Speed up compilation a bit:
!ifdef __LOADDLL__
!  loaddll wcc      wccd
!  loaddll wccaxp   wccdaxp
!  loaddll wcc386   wccd386
!  loaddll wpp      wppdi86
!  loaddll wppaxp   wppdaxp
!  loaddll wpp386   wppd386
!  loaddll wlink    wlink
!  loaddll wlib     wlibd
!endif

# We need these variables in some bakefile-made rules:
WATCOM_CWD = $+ $(%cdrive):$(%cwd) $-

### Conditionally set variables: ###

WX3RDPARTYLIBPOSTFIX =
!ifeq BUILD debug
WX3RDPARTYLIBPOSTFIX = d
!endif
_BUILDDIR_SHARED_SUFFIX =
!ifeq SHARED 0
_BUILDDIR_SHARED_SUFFIX = 
!endif
!ifeq SHARED 1
_BUILDDIR_SHARED_SUFFIX = _dll
!endif
__app_lua___depname =
!ifeq USE_SYSTEM_LUA 0
__app_lua___depname = ..\..\..\bin\wat_$(____app_23)\lua.exe
!endif
__app_luac___depname =
!ifeq SHARED 0
!ifeq USE_SYSTEM_LUA 0
__app_luac___depname = ..\..\..\bin\wat_$(____app_23)\luac.exe
!endif
!endif
__app_wxlua___depname =
!ifeq USE_WXBINDSTC 1
!ifeq USE_WXLUAAPP 1
!ifeq USE_WXLUADEBUG 1
__app_wxlua___depname = ..\..\..\bin\wat_$(____app_23)\wxlua.exe
!endif
!endif
!endif
__app_wxluaedit___depname =
!ifeq USE_WXBINDSTC 1
!ifeq USE_WXLUAEDITAPP 1
__app_wxluaedit___depname = ..\..\..\bin\wat_$(____app_23)\wxluaedit.exe
!endif
!endif
__app_wxluacan___depname =
!ifeq USE_WXLUACANAPP 1
__app_wxluacan___depname = ..\..\..\bin\wat_$(____app_23)\wxluacan.exe
!endif
__app_wxluafreeze___depname =
!ifeq USE_WXLUAFREEZEAPP 1
__app_wxluafreeze___depname = ..\..\..\bin\wat_$(____app_23)\wxluafreeze.exe
!endif
____app =
!ifeq BUILD debug
____app = -od
!endif
!ifeq BUILD release
____app = -ot -ox
!endif
____app_16 =
!ifeq BUILD debug
____app_16 = -d2
!endif
!ifeq BUILD release
____app_16 = -d0
!endif
____app_17 =
!ifeq BUILD debug
____app_17 = debug all
!endif
!ifeq BUILD release
____app_17 = 
!endif
__RUNTIME_LIBS =
!ifeq RUNTIME_LIBS dynamic
__RUNTIME_LIBS = -br
!endif
!ifeq RUNTIME_LIBS static
__RUNTIME_LIBS = 
!endif
__THREADING =
!ifeq THREADING multi
__THREADING = -bm
!endif
!ifeq THREADING single
__THREADING = 
!endif
____app_18 =
!ifeq SHARED 0
____app_18 = lib
!endif
!ifeq SHARED 1
____app_18 = dll
!endif
__WXLIB_XRC_NAME_p =
!ifeq BUILD debug
!ifeq UNICODE 0
!ifeq WX_MONOLITHIC 0
__WXLIB_XRC_NAME_p = wxmsw$(WX_VERSION)d_xrc.lib
!endif
!endif
!endif
!ifeq BUILD debug
!ifeq UNICODE 1
!ifeq WX_MONOLITHIC 0
__WXLIB_XRC_NAME_p = wxmsw$(WX_VERSION)ud_xrc.lib
!endif
!endif
!endif
!ifeq BUILD release
!ifeq UNICODE 0
!ifeq WX_MONOLITHIC 0
__WXLIB_XRC_NAME_p = wxmsw$(WX_VERSION)_xrc.lib
!endif
!endif
!endif
!ifeq BUILD release
!ifeq UNICODE 1
!ifeq WX_MONOLITHIC 0
__WXLIB_XRC_NAME_p = wxmsw$(WX_VERSION)u_xrc.lib
!endif
!endif
!endif
__WXLIB_HTML_NAME_p =
!ifeq BUILD debug
!ifeq UNICODE 0
!ifeq WX_MONOLITHIC 0
__WXLIB_HTML_NAME_p = wxmsw$(WX_VERSION)d_html.lib
!endif
!endif
!endif
!ifeq BUILD debug
!ifeq UNICODE 1
!ifeq WX_MONOLITHIC 0
__WXLIB_HTML_NAME_p = wxmsw$(WX_VERSION)ud_html.lib
!endif
!endif
!endif
!ifeq BUILD release
!ifeq UNICODE 0
!ifeq WX_MONOLITHIC 0
__WXLIB_HTML_NAME_p = wxmsw$(WX_VERSION)_html.lib
!endif
!endif
!endif
!ifeq BUILD release
!ifeq UNICODE 1
!ifeq WX_MONOLITHIC 0
__WXLIB_HTML_NAME_p = wxmsw$(WX_VERSION)u_html.lib
!endif
!endif
!endif
__WXLIB_AUI_NAME_p =
!ifeq BUILD debug
!ifeq UNICODE 0
!ifeq WX_MONOLITHIC 0
__WXLIB_AUI_NAME_p = wxmsw$(WX_VERSION)d_aui.lib
!endif
!endif
!endif
!ifeq BUILD debug
!ifeq UNICODE 1
!ifeq WX_MONOLITHIC 0
__WXLIB_AUI_NAME_p = wxmsw$(WX_VERSION)ud_aui.lib
!endif
!endif
!endif
!ifeq BUILD release
!ifeq UNICODE 0
!ifeq WX_MONOLITHIC 0
__WXLIB_AUI_NAME_p = wxmsw$(WX_VERSION)_aui.lib
!endif
!endif
!endif
!ifeq BUILD release
!ifeq UNICODE 1
!ifeq WX_MONOLITHIC 0
__WXLIB_AUI_NAME_p = wxmsw$(WX_VERSION)u_aui.lib
!endif
!endif
!endif
__WXLIB_MEDIA_NAME_p =
!ifeq BUILD debug
!ifeq UNICODE 0
!ifeq WX_MONOLITHIC 0
__WXLIB_MEDIA_NAME_p = wxmsw$(WX_VERSION)d_media.lib
!endif
!endif
!endif
!ifeq BUILD debug
!ifeq UNICODE 1
!ifeq WX_MONOLITHIC 0
__WXLIB_MEDIA_NAME_p = wxmsw$(WX_VERSION)ud_media.lib
!endif
!endif
!endif
!ifeq BUILD release
!ifeq UNICODE 0
!ifeq WX_MONOLITHIC 0
__WXLIB_MEDIA_NAME_p = wxmsw$(WX_VERSION)_media.lib
!endif
!endif
!endif
!ifeq BUILD release
!ifeq UNICODE 1
!ifeq WX_MONOLITHIC 0
__WXLIB_MEDIA_NAME_p = wxmsw$(WX_VERSION)u_media.lib
!endif
!endif
!endif
__WXLIB_ADV_NAME_p =
!ifeq BUILD debug
!ifeq UNICODE 0
!ifeq WX_MONOLITHIC 0
__WXLIB_ADV_NAME_p = wxmsw$(WX_VERSION)d_adv.lib
!endif
!endif
!endif
!ifeq BUILD debug
!ifeq UNICODE 1
!ifeq WX_MONOLITHIC 0
__WXLIB_ADV_NAME_p = wxmsw$(WX_VERSION)ud_adv.lib
!endif
!endif
!endif
!ifeq BUILD release
!ifeq UNICODE 0
!ifeq WX_MONOLITHIC 0
__WXLIB_ADV_NAME_p = wxmsw$(WX_VERSION)_adv.lib
!endif
!endif
!endif
!ifeq BUILD release
!ifeq UNICODE 1
!ifeq WX_MONOLITHIC 0
__WXLIB_ADV_NAME_p = wxmsw$(WX_VERSION)u_adv.lib
!endif
!endif
!endif
__WXLIB_NET_NAME_p =
!ifeq BUILD debug
!ifeq UNICODE 0
!ifeq WX_MONOLITHIC 0
__WXLIB_NET_NAME_p = wxbase$(WX_VERSION)d_net.lib
!endif
!endif
!endif
!ifeq BUILD debug
!ifeq UNICODE 1
!ifeq WX_MONOLITHIC 0
__WXLIB_NET_NAME_p = wxbase$(WX_VERSION)ud_net.lib
!endif
!endif
!endif
!ifeq BUILD release
!ifeq UNICODE 0
!ifeq WX_MONOLITHIC 0
__WXLIB_NET_NAME_p = wxbase$(WX_VERSION)_net.lib
!endif
!endif
!endif
!ifeq BUILD release
!ifeq UNICODE 1
!ifeq WX_MONOLITHIC 0
__WXLIB_NET_NAME_p = wxbase$(WX_VERSION)u_net.lib
!endif
!endif
!endif
__WXLIB_XML_NAME_p =
!ifeq BUILD debug
!ifeq UNICODE 0
!ifeq WX_MONOLITHIC 0
__WXLIB_XML_NAME_p = wxbase$(WX_VERSION)d_xml.lib
!endif
!endif
!endif
!ifeq BUILD debug
!ifeq UNICODE 1
!ifeq WX_MONOLITHIC 0
__WXLIB_XML_NAME_p = wxbase$(WX_VERSION)ud_xml.lib
!endif
!endif
!endif
!ifeq BUILD release
!ifeq UNICODE 0
!ifeq WX_MONOLITHIC 0
__WXLIB_XML_NAME_p = wxbase$(WX_VERSION)_xml.lib
!endif
!endif
!endif
!ifeq BUILD release
!ifeq UNICODE 1
!ifeq WX_MONOLITHIC 0
__WXLIB_XML_NAME_p = wxbase$(WX_VERSION)u_xml.lib
!endif
!endif
!endif
__WXLIB_CORE_NAME_p =
!ifeq BUILD debug
!ifeq UNICODE 0
!ifeq WX_MONOLITHIC 0
__WXLIB_CORE_NAME_p = wxmsw$(WX_VERSION)d_core.lib
!endif
!endif
!endif
!ifeq BUILD debug
!ifeq UNICODE 1
!ifeq WX_MONOLITHIC 0
__WXLIB_CORE_NAME_p = wxmsw$(WX_VERSION)ud_core.lib
!endif
!endif
!endif
!ifeq BUILD release
!ifeq UNICODE 0
!ifeq WX_MONOLITHIC 0
__WXLIB_CORE_NAME_p = wxmsw$(WX_VERSION)_core.lib
!endif
!endif
!endif
!ifeq BUILD release
!ifeq UNICODE 1
!ifeq WX_MONOLITHIC 0
__WXLIB_CORE_NAME_p = wxmsw$(WX_VERSION)u_core.lib
!endif
!endif
!endif
__WXLIB_BASE_NAME_p =
!ifeq BUILD debug
!ifeq UNICODE 0
!ifeq WX_MONOLITHIC 0
__WXLIB_BASE_NAME_p = wxbase$(WX_VERSION)d.lib
!endif
!endif
!endif
!ifeq BUILD debug
!ifeq UNICODE 0
!ifeq WX_MONOLITHIC 1
__WXLIB_BASE_NAME_p = wxmsw$(WX_VERSION)d.lib
!endif
!endif
!endif
!ifeq BUILD debug
!ifeq UNICODE 1
!ifeq WX_MONOLITHIC 0
__WXLIB_BASE_NAME_p = wxbase$(WX_VERSION)ud.lib
!endif
!endif
!endif
!ifeq BUILD debug
!ifeq UNICODE 1
!ifeq WX_MONOLITHIC 1
__WXLIB_BASE_NAME_p = wxmsw$(WX_VERSION)ud.lib
!endif
!endif
!endif
!ifeq BUILD release
!ifeq UNICODE 0
!ifeq WX_MONOLITHIC 0
__WXLIB_BASE_NAME_p = wxbase$(WX_VERSION).lib
!endif
!endif
!endif
!ifeq BUILD release
!ifeq UNICODE 0
!ifeq WX_MONOLITHIC 1
__WXLIB_BASE_NAME_p = wxmsw$(WX_VERSION).lib
!endif
!endif
!endif
!ifeq BUILD release
!ifeq UNICODE 1
!ifeq WX_MONOLITHIC 0
__WXLIB_BASE_NAME_p = wxbase$(WX_VERSION)u.lib
!endif
!endif
!endif
!ifeq BUILD release
!ifeq UNICODE 1
!ifeq WX_MONOLITHIC 1
__WXLIB_BASE_NAME_p = wxmsw$(WX_VERSION)u.lib
!endif
!endif
!endif
____WX_SHARED =
!ifeq WX_SHARED 0
____WX_SHARED = 
!endif
!ifeq WX_SHARED 1
____WX_SHARED = -dWXUSINGDLL
!endif
__WXUNICODE_DEFINE_p =
!ifeq UNICODE 1
__WXUNICODE_DEFINE_p = -d_UNICODE
!endif
__WXDEBUG_DEFINE_p =
!ifeq BUILD debug
__WXDEBUG_DEFINE_p = -d__WXDEBUG__
!endif
WXLIBPOSTFIX =
!ifeq BUILD debug
!ifeq UNICODE 0
WXLIBPOSTFIX = d
!endif
!endif
!ifeq BUILD debug
!ifeq UNICODE 1
WXLIBPOSTFIX = ud
!endif
!endif
!ifeq BUILD release
!ifeq UNICODE 1
WXLIBPOSTFIX = u
!endif
!endif
WXLIBPATH =
!ifeq WX_SHARED 0
WXLIBPATH = \lib\wat_lib
!endif
!ifeq WX_SHARED 1
WXLIBPATH = \lib\wat_dll
!endif
____app_23 =
!ifeq SHARED 0
____app_23 = lib
!endif
!ifeq SHARED 0
____app_23 = lib
!endif
!ifeq SHARED 1
____app_23 = dll
!endif
!ifeq SHARED 1
____app_23 = dll
!endif

### Variables: ###

APP_LUA_CFLAGS = $(____WX_SHARED) $(__WXUNICODE_DEFINE_p) &
	$(__WXDEBUG_DEFINE_p) -d__WXMSW__ &
	-i=$(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX) -i=$(WX_DIR)\include &
	$(____app) $(____app_16) $(__RUNTIME_LIBS) $(__THREADING) &
	-i=..\..\..\modules -i=.\..\..\.. -i=$(LUA_INCLUDE_DIR) $(CPPFLAGS) &
	$(CFLAGS)
APP_LUA_OBJECTS =  &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_lua_lua.obj
APP_LUAC_CFLAGS = $(____WX_SHARED) $(__WXUNICODE_DEFINE_p) &
	$(__WXDEBUG_DEFINE_p) -d__WXMSW__ &
	-i=$(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX) -i=$(WX_DIR)\include &
	$(____app) $(____app_16) $(__RUNTIME_LIBS) $(__THREADING) &
	-i=..\..\..\modules -i=.\..\..\.. -i=$(LUA_INCLUDE_DIR) $(CPPFLAGS) &
	$(CFLAGS)
APP_LUAC_OBJECTS =  &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_luac_luac.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_luac_print.obj
APP_WXLUA_CXXFLAGS = $(____WX_SHARED) $(__WXUNICODE_DEFINE_p) &
	$(__WXDEBUG_DEFINE_p) -d__WXMSW__ &
	-i=$(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX) -i=$(WX_DIR)\include &
	$(____app) $(____app_16) $(__RUNTIME_LIBS) $(__THREADING) &
	-i=..\..\..\modules -i=.\..\..\.. -i=$(LUA_INCLUDE_DIR) &
	-dwxLUA_USEBINDING_WXADV=$(USE_WXBINDADV) &
	-dwxLUA_USEBINDING_WXAUI=$(USE_WXBINDAUI) &
	-dwxLUA_USEBINDING_WXBASE=$(USE_WXBINDBASE) &
	-dwxLUA_USEBINDING_WXCORE=$(USE_WXBINDCORE) &
	-dwxLUA_USEBINDING_WXGL=$(USE_WXBINDGL) &
	-dwxLUA_USEBINDING_WXHTML=$(USE_WXBINDHTML) &
	-dwxLUA_USEBINDING_WXMEDIA=$(USE_WXBINDMEDIA) &
	-dwxLUA_USEBINDING_WXNET=$(USE_WXBINDNET) &
	-dwxLUA_USEBINDING_WXRICHTEXT=$(USE_WXBINDRICHTEXT) &
	-dwxLUA_USEBINDING_WXSTC=$(USE_WXBINDSTC) &
	-dwxLUA_USEBINDING_WXXML=$(USE_WXBINDXML) &
	-dwxLUA_USEBINDING_WXXRC=$(USE_WXBINDXRC) $(CPPFLAGS) $(CXXFLAGS)
APP_WXLUA_OBJECTS =  &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxlua_lconsole.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxlua_wxlua.obj
APP_WXLUAEDIT_CXXFLAGS = $(____WX_SHARED) $(__WXUNICODE_DEFINE_p) &
	$(__WXDEBUG_DEFINE_p) -d__WXMSW__ &
	-i=$(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX) -i=$(WX_DIR)\include &
	$(____app) $(____app_16) $(__RUNTIME_LIBS) $(__THREADING) &
	-i=..\..\..\modules -i=.\..\..\.. -i=$(LUA_INCLUDE_DIR) &
	-dwxLUA_USEBINDING_WXADV=$(USE_WXBINDADV) &
	-dwxLUA_USEBINDING_WXAUI=$(USE_WXBINDAUI) &
	-dwxLUA_USEBINDING_WXBASE=$(USE_WXBINDBASE) &
	-dwxLUA_USEBINDING_WXCORE=$(USE_WXBINDCORE) &
	-dwxLUA_USEBINDING_WXGL=$(USE_WXBINDGL) &
	-dwxLUA_USEBINDING_WXHTML=$(USE_WXBINDHTML) &
	-dwxLUA_USEBINDING_WXMEDIA=$(USE_WXBINDMEDIA) &
	-dwxLUA_USEBINDING_WXNET=$(USE_WXBINDNET) &
	-dwxLUA_USEBINDING_WXRICHTEXT=$(USE_WXBINDRICHTEXT) &
	-dwxLUA_USEBINDING_WXSTC=$(USE_WXBINDSTC) &
	-dwxLUA_USEBINDING_WXXML=$(USE_WXBINDXML) &
	-dwxLUA_USEBINDING_WXXRC=$(USE_WXBINDXRC) -i=$(WXSTEDIT_DIR)\include &
	-i=$(WX_DIR)\contrib\include $(CPPFLAGS) $(CXXFLAGS)
APP_WXLUAEDIT_OBJECTS =  &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluaedit_wxledit.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluaedit_wxluaedit.obj
APP_WXLUACAN_CXXFLAGS = $(____WX_SHARED) $(__WXUNICODE_DEFINE_p) &
	$(__WXDEBUG_DEFINE_p) -d__WXMSW__ &
	-i=$(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX) -i=$(WX_DIR)\include &
	$(____app) $(____app_16) $(__RUNTIME_LIBS) $(__THREADING) &
	-i=..\..\..\modules -i=.\..\..\.. -i=$(LUA_INCLUDE_DIR) &
	-dwxLUA_USEBINDING_WXADV=$(USE_WXBINDADV) &
	-dwxLUA_USEBINDING_WXAUI=$(USE_WXBINDAUI) &
	-dwxLUA_USEBINDING_WXBASE=$(USE_WXBINDBASE) &
	-dwxLUA_USEBINDING_WXCORE=$(USE_WXBINDCORE) &
	-dwxLUA_USEBINDING_WXGL=$(USE_WXBINDGL) &
	-dwxLUA_USEBINDING_WXHTML=$(USE_WXBINDHTML) &
	-dwxLUA_USEBINDING_WXMEDIA=$(USE_WXBINDMEDIA) &
	-dwxLUA_USEBINDING_WXNET=$(USE_WXBINDNET) &
	-dwxLUA_USEBINDING_WXRICHTEXT=$(USE_WXBINDRICHTEXT) &
	-dwxLUA_USEBINDING_WXSTC=$(USE_WXBINDSTC) &
	-dwxLUA_USEBINDING_WXXML=$(USE_WXBINDXML) &
	-dwxLUA_USEBINDING_WXXRC=$(USE_WXBINDXRC) &
	-i=..\..\..\modules\wxbind\setup $(CPPFLAGS) $(CXXFLAGS)
APP_WXLUACAN_OBJECTS =  &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluacan_cancom.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluacan_canlua.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluacan_cansim.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluacan_wxluacan_bind.obj
APP_WXLUAFREEZE_CXXFLAGS = $(____WX_SHARED) $(__WXUNICODE_DEFINE_p) &
	$(__WXDEBUG_DEFINE_p) -d__WXMSW__ &
	-i=$(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX) -i=$(WX_DIR)\include &
	$(____app) $(____app_16) $(__RUNTIME_LIBS) $(__THREADING) &
	-i=..\..\..\modules -i=.\..\..\.. -i=$(LUA_INCLUDE_DIR) &
	-dwxLUA_USEBINDING_WXADV=$(USE_WXBINDADV) &
	-dwxLUA_USEBINDING_WXAUI=$(USE_WXBINDAUI) &
	-dwxLUA_USEBINDING_WXBASE=$(USE_WXBINDBASE) &
	-dwxLUA_USEBINDING_WXCORE=$(USE_WXBINDCORE) &
	-dwxLUA_USEBINDING_WXGL=$(USE_WXBINDGL) &
	-dwxLUA_USEBINDING_WXHTML=$(USE_WXBINDHTML) &
	-dwxLUA_USEBINDING_WXMEDIA=$(USE_WXBINDMEDIA) &
	-dwxLUA_USEBINDING_WXNET=$(USE_WXBINDNET) &
	-dwxLUA_USEBINDING_WXRICHTEXT=$(USE_WXBINDRICHTEXT) &
	-dwxLUA_USEBINDING_WXSTC=$(USE_WXBINDSTC) &
	-dwxLUA_USEBINDING_WXXML=$(USE_WXBINDXML) &
	-dwxLUA_USEBINDING_WXXRC=$(USE_WXBINDXRC) $(CPPFLAGS) $(CXXFLAGS)
APP_WXLUAFREEZE_OBJECTS =  &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluafreeze_wxluafreeze.obj


all : watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)
watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX) :
	-if not exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX) mkdir watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)

### Targets: ###

all : .SYMBOLIC test_for_selected_wxbuild $(__app_lua___depname) $(__app_luac___depname) $(__app_wxlua___depname) $(__app_wxluaedit___depname) $(__app_wxluacan___depname) $(__app_wxluafreeze___depname)

clean : .SYMBOLIC 
	-if exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.obj del watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.obj
	-if exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.res del watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.res
	-if exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.lbc del watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.lbc
	-if exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.ilk del watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.ilk
	-if exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.pch del watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.pch
	-if exist ..\..\..\bin\wat_$(____app_23)\lua.exe del ..\..\..\bin\wat_$(____app_23)\lua.exe
	-if exist ..\..\..\bin\wat_$(____app_23)\luac.exe del ..\..\..\bin\wat_$(____app_23)\luac.exe
	-if exist ..\..\..\bin\wat_$(____app_23)\wxlua.exe del ..\..\..\bin\wat_$(____app_23)\wxlua.exe
	-if exist ..\..\..\bin\wat_$(____app_23)\wxluaedit.exe del ..\..\..\bin\wat_$(____app_23)\wxluaedit.exe
	-if exist ..\..\..\bin\wat_$(____app_23)\wxluacan.exe del ..\..\..\bin\wat_$(____app_23)\wxluacan.exe
	-if exist ..\..\..\bin\wat_$(____app_23)\wxluafreeze.exe del ..\..\..\bin\wat_$(____app_23)\wxluafreeze.exe

test_for_selected_wxbuild :  
	@if not exist $(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX)\wx\setup.h \
	echo ----------------------------------------------------------------------------
	@if not exist $(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX)\wx\setup.h \
	echo The selected wxWidgets build is not available!
	@if not exist $(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX)\wx\setup.h \
	echo Please use the options prefixed with WX_ to select another wxWidgets build.
	@if not exist $(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX)\wx\setup.h \
	echo ----------------------------------------------------------------------------
	@if not exist $(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX)\wx\setup.h \
	exit 1

!ifeq USE_SYSTEM_LUA 0
..\..\..\bin\wat_$(____app_23)\lua.exe :  make_dir_app_lua  $(APP_LUA_OBJECTS)
	@%create watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_lua.lbc
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_lua.lbc option quiet
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_lua.lbc name $^@
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_lua.lbc option caseexact
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_lua.lbc $(LDFLAGS) libpath $(WX_DIR)$(WXLIBPATH) $(____app_17)  libpath ..\..\..\lib\wat_$(____app_18) libpath $(LUA_LIB_DIR) system nt ref 'main_'
	@for %i in ($(APP_LUA_OBJECTS)) do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_lua.lbc file %i
	@for %i in ( wxtiff$(WX3RDPARTYLIBPOSTFIX).lib wxjpeg$(WX3RDPARTYLIBPOSTFIX).lib wxpng$(WX3RDPARTYLIBPOSTFIX).lib wxzlib$(WX3RDPARTYLIBPOSTFIX).lib wxregex$(WXLIBPOSTFIX).lib wxexpat$(WX3RDPARTYLIBPOSTFIX).lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib lua5.1.lib) do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_lua.lbc library %i
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_lua.lbc
	@for %i in () do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_lua.lbc option stack=%i
	wlink @watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_lua.lbc
!endif

make_dir_app_lua :  
	if not exist ..\..\..\bin\wat_$(____app_23) mkdir ..\..\..\bin\wat_$(____app_23)

!ifeq SHARED 0
!ifeq USE_SYSTEM_LUA 0
..\..\..\bin\wat_$(____app_23)\luac.exe :  make_dir_app_luac  $(APP_LUAC_OBJECTS)
	@%create watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_luac.lbc
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_luac.lbc option quiet
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_luac.lbc name $^@
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_luac.lbc option caseexact
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_luac.lbc $(LDFLAGS) libpath $(WX_DIR)$(WXLIBPATH) $(____app_17)  libpath ..\..\..\lib\wat_$(____app_18) libpath $(LUA_LIB_DIR) system nt ref 'main_'
	@for %i in ($(APP_LUAC_OBJECTS)) do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_luac.lbc file %i
	@for %i in ( wxtiff$(WX3RDPARTYLIBPOSTFIX).lib wxjpeg$(WX3RDPARTYLIBPOSTFIX).lib wxpng$(WX3RDPARTYLIBPOSTFIX).lib wxzlib$(WX3RDPARTYLIBPOSTFIX).lib wxregex$(WXLIBPOSTFIX).lib wxexpat$(WX3RDPARTYLIBPOSTFIX).lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib lua5.1.lib) do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_luac.lbc library %i
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_luac.lbc
	@for %i in () do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_luac.lbc option stack=%i
	wlink @watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_luac.lbc
!endif
!endif

make_dir_app_luac :  
	if not exist ..\..\..\bin\wat_$(____app_23) mkdir ..\..\..\bin\wat_$(____app_23)

!ifeq USE_WXBINDSTC 1
!ifeq USE_WXLUAAPP 1
!ifeq USE_WXLUADEBUG 1
..\..\..\bin\wat_$(____app_23)\wxlua.exe :  make_dir_app_wxlua  $(APP_WXLUA_OBJECTS) watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxlua_wxlua.res
	@%create watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxlua.lbc
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxlua.lbc option quiet
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxlua.lbc name $^@
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxlua.lbc option caseexact
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxlua.lbc $(LDFLAGS) libpath $(WX_DIR)$(WXLIBPATH) $(____app_17)  libpath ..\..\..\lib\wat_$(____app_18) libpath $(LUA_LIB_DIR) system nt_win ref '_WinMain@16'
	@for %i in ($(APP_WXLUA_OBJECTS)) do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxlua.lbc file %i
	@for %i in ( wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxluasocket.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxluadebug.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindadv.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindaui.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindbase.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindcore.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindgl.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindhtml.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindmedia.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindnet.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindstc.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindxml.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindxrc.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxlua.lib lua5.1.lib wxmsw$(WX_VERSION)$(WXLIBPOSTFIX)_stc.lib $(__WXLIB_XRC_NAME_p) $(__WXLIB_HTML_NAME_p) wxmsw$(WX_VERSION)$(WXLIBPOSTFIX)_gl.lib $(__WXLIB_AUI_NAME_p) $(__WXLIB_MEDIA_NAME_p) $(__WXLIB_ADV_NAME_p) $(__WXLIB_NET_NAME_p) $(__WXLIB_XML_NAME_p) $(__WXLIB_CORE_NAME_p) $(__WXLIB_BASE_NAME_p) wxtiff$(WX3RDPARTYLIBPOSTFIX).lib wxjpeg$(WX3RDPARTYLIBPOSTFIX).lib wxpng$(WX3RDPARTYLIBPOSTFIX).lib wxzlib$(WX3RDPARTYLIBPOSTFIX).lib wxregex$(WXLIBPOSTFIX).lib wxexpat$(WX3RDPARTYLIBPOSTFIX).lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib) do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxlua.lbc library %i
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxlua.lbc option resource=watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxlua_wxlua.res
	@for %i in () do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxlua.lbc option stack=%i
	wlink @watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxlua.lbc
!endif
!endif
!endif

make_dir_app_wxlua :  
	if not exist ..\..\..\bin\wat_$(____app_23) mkdir ..\..\..\bin\wat_$(____app_23)

!ifeq USE_WXBINDSTC 1
!ifeq USE_WXLUAEDITAPP 1
..\..\..\bin\wat_$(____app_23)\wxluaedit.exe :  make_dir_app_wxluaedit  $(APP_WXLUAEDIT_OBJECTS) watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluaedit_wxluaedit.res
	@%create watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluaedit.lbc
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluaedit.lbc option quiet
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluaedit.lbc name $^@
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluaedit.lbc option caseexact
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluaedit.lbc $(LDFLAGS) libpath $(WX_DIR)$(WXLIBPATH) $(____app_17)  libpath ..\..\..\lib\wat_$(____app_18) libpath $(LUA_LIB_DIR) system nt_win ref '_WinMain@16' libpath $(WXSTEDIT_DIR)$(WXLIBPATH)
	@for %i in ($(APP_WXLUAEDIT_OBJECTS)) do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluaedit.lbc file %i
	@for %i in ( wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxluasocket.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxluadebug.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindadv.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindaui.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindbase.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindcore.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindgl.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindhtml.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindmedia.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindnet.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindstc.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindxml.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindxrc.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxlua.lib lua5.1.lib wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_stedit.lib wxmsw$(WX_VERSION)$(WXLIBPOSTFIX)_stc.lib $(__WXLIB_XRC_NAME_p) $(__WXLIB_HTML_NAME_p) wxmsw$(WX_VERSION)$(WXLIBPOSTFIX)_gl.lib $(__WXLIB_AUI_NAME_p) $(__WXLIB_MEDIA_NAME_p) $(__WXLIB_ADV_NAME_p) $(__WXLIB_NET_NAME_p) $(__WXLIB_XML_NAME_p) $(__WXLIB_CORE_NAME_p) $(__WXLIB_BASE_NAME_p) wxtiff$(WX3RDPARTYLIBPOSTFIX).lib wxjpeg$(WX3RDPARTYLIBPOSTFIX).lib wxpng$(WX3RDPARTYLIBPOSTFIX).lib wxzlib$(WX3RDPARTYLIBPOSTFIX).lib wxregex$(WXLIBPOSTFIX).lib wxexpat$(WX3RDPARTYLIBPOSTFIX).lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib) do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluaedit.lbc library %i
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluaedit.lbc option resource=watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluaedit_wxluaedit.res
	@for %i in () do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluaedit.lbc option stack=%i
	wlink @watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluaedit.lbc
!endif
!endif

make_dir_app_wxluaedit :  
	if not exist ..\..\..\bin\wat_$(____app_23) mkdir ..\..\..\bin\wat_$(____app_23)

!ifeq USE_WXLUACANAPP 1
..\..\..\bin\wat_$(____app_23)\wxluacan.exe :  make_dir_app_wxluacan  $(APP_WXLUACAN_OBJECTS) watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluacan_cansim.res
	@%create watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluacan.lbc
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluacan.lbc option quiet
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluacan.lbc name $^@
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluacan.lbc option caseexact
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluacan.lbc $(LDFLAGS) libpath $(WX_DIR)$(WXLIBPATH) $(____app_17)  libpath ..\..\..\lib\wat_$(____app_18) libpath $(LUA_LIB_DIR) system nt_win ref '_WinMain@16'
	@for %i in ($(APP_WXLUACAN_OBJECTS)) do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluacan.lbc file %i
	@for %i in ( wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxluasocket.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxluadebug.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindadv.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindaui.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindbase.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindcore.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindhtml.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindmedia.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindnet.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindxml.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindxrc.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxlua.lib lua5.1.lib $(__WXLIB_XRC_NAME_p) $(__WXLIB_HTML_NAME_p) wxmsw$(WX_VERSION)$(WXLIBPOSTFIX)_gl.lib $(__WXLIB_AUI_NAME_p) $(__WXLIB_MEDIA_NAME_p) $(__WXLIB_ADV_NAME_p) $(__WXLIB_NET_NAME_p) $(__WXLIB_XML_NAME_p) $(__WXLIB_CORE_NAME_p) $(__WXLIB_BASE_NAME_p) wxtiff$(WX3RDPARTYLIBPOSTFIX).lib wxjpeg$(WX3RDPARTYLIBPOSTFIX).lib wxpng$(WX3RDPARTYLIBPOSTFIX).lib wxzlib$(WX3RDPARTYLIBPOSTFIX).lib wxregex$(WXLIBPOSTFIX).lib wxexpat$(WX3RDPARTYLIBPOSTFIX).lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib) do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluacan.lbc library %i
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluacan.lbc option resource=watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluacan_cansim.res
	@for %i in () do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluacan.lbc option stack=%i
	wlink @watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluacan.lbc
!endif

make_dir_app_wxluacan :  
	if not exist ..\..\..\bin\wat_$(____app_23) mkdir ..\..\..\bin\wat_$(____app_23)

!ifeq USE_WXLUAFREEZEAPP 1
..\..\..\bin\wat_$(____app_23)\wxluafreeze.exe :  make_dir_app_wxluafreeze  $(APP_WXLUAFREEZE_OBJECTS) watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluafreeze_wxluafreeze.res
	@%create watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluafreeze.lbc
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluafreeze.lbc option quiet
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluafreeze.lbc name $^@
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluafreeze.lbc option caseexact
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluafreeze.lbc $(LDFLAGS) libpath $(WX_DIR)$(WXLIBPATH) $(____app_17)  libpath ..\..\..\lib\wat_$(____app_18) libpath $(LUA_LIB_DIR) system nt_win ref '_WinMain@16'
	@for %i in ($(APP_WXLUAFREEZE_OBJECTS)) do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluafreeze.lbc file %i
	@for %i in ( wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxluasocket.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxluadebug.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindadv.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindaui.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindbase.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindcore.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindgl.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindhtml.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindmedia.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindnet.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindstc.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindxml.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxbindxrc.lib wxlua_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxlua.lib lua5.1.lib wxmsw$(WX_VERSION)$(WXLIBPOSTFIX)_stc.lib $(__WXLIB_XRC_NAME_p) $(__WXLIB_HTML_NAME_p) wxmsw$(WX_VERSION)$(WXLIBPOSTFIX)_gl.lib $(__WXLIB_AUI_NAME_p) $(__WXLIB_MEDIA_NAME_p) $(__WXLIB_ADV_NAME_p) $(__WXLIB_NET_NAME_p) $(__WXLIB_XML_NAME_p) $(__WXLIB_CORE_NAME_p) $(__WXLIB_BASE_NAME_p) wxtiff$(WX3RDPARTYLIBPOSTFIX).lib wxjpeg$(WX3RDPARTYLIBPOSTFIX).lib wxpng$(WX3RDPARTYLIBPOSTFIX).lib wxzlib$(WX3RDPARTYLIBPOSTFIX).lib wxregex$(WXLIBPOSTFIX).lib wxexpat$(WX3RDPARTYLIBPOSTFIX).lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib) do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluafreeze.lbc library %i
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluafreeze.lbc option resource=watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluafreeze_wxluafreeze.res
	@for %i in () do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluafreeze.lbc option stack=%i
	wlink @watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluafreeze.lbc
!endif

make_dir_app_wxluafreeze :  
	if not exist ..\..\..\bin\wat_$(____app_23) mkdir ..\..\..\bin\wat_$(____app_23)

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_lua_lua.obj :  .AUTODEPEND ..\..\..\modules\lua\src\lua.c
	$(CC) -bt=nt -zq -fo=$^@ $(APP_LUA_CFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_luac_luac.obj :  .AUTODEPEND ..\..\..\modules\lua\src\luac.c
	$(CC) -bt=nt -zq -fo=$^@ $(APP_LUAC_CFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_luac_print.obj :  .AUTODEPEND ..\..\..\modules\lua\src\print.c
	$(CC) -bt=nt -zq -fo=$^@ $(APP_LUAC_CFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxlua_lconsole.obj :  .AUTODEPEND ..\..\wxlua\src\lconsole.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(APP_WXLUA_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxlua_wxlua.obj :  .AUTODEPEND ..\..\wxlua\src\wxlua.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(APP_WXLUA_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxlua_wxlua.res :  .AUTODEPEND ..\..\wxlua\src\wxlua.rc
	wrc -q -ad -bt=nt -r -fo=$^@  $(____WX_SHARED) $(__WXUNICODE_DEFINE_p) $(__WXDEBUG_DEFINE_p) -d__WXMSW__ -i=$(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX) -i=$(WX_DIR)\include -i=..\..\..\modules -i=.\..\..\.. -i=$(LUA_INCLUDE_DIR) -dwxLUA_USEBINDING_WXADV=$(USE_WXBINDADV) -dwxLUA_USEBINDING_WXAUI=$(USE_WXBINDAUI) -dwxLUA_USEBINDING_WXBASE=$(USE_WXBINDBASE) -dwxLUA_USEBINDING_WXCORE=$(USE_WXBINDCORE) -dwxLUA_USEBINDING_WXGL=$(USE_WXBINDGL) -dwxLUA_USEBINDING_WXHTML=$(USE_WXBINDHTML) -dwxLUA_USEBINDING_WXMEDIA=$(USE_WXBINDMEDIA) -dwxLUA_USEBINDING_WXNET=$(USE_WXBINDNET) -dwxLUA_USEBINDING_WXRICHTEXT=$(USE_WXBINDRICHTEXT) -dwxLUA_USEBINDING_WXSTC=$(USE_WXBINDSTC) -dwxLUA_USEBINDING_WXXML=$(USE_WXBINDXML) -dwxLUA_USEBINDING_WXXRC=$(USE_WXBINDXRC) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluaedit_wxledit.obj :  .AUTODEPEND ..\..\wxluaedit\src\wxledit.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(APP_WXLUAEDIT_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluaedit_wxluaedit.obj :  .AUTODEPEND ..\..\wxluaedit\src\wxluaedit.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(APP_WXLUAEDIT_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluaedit_wxluaedit.res :  .AUTODEPEND ..\..\wxluaedit\src\wxluaedit.rc
	wrc -q -ad -bt=nt -r -fo=$^@  $(____WX_SHARED) $(__WXUNICODE_DEFINE_p) $(__WXDEBUG_DEFINE_p) -d__WXMSW__ -i=$(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX) -i=$(WX_DIR)\include -i=..\..\..\modules -i=.\..\..\.. -i=$(LUA_INCLUDE_DIR) -dwxLUA_USEBINDING_WXADV=$(USE_WXBINDADV) -dwxLUA_USEBINDING_WXAUI=$(USE_WXBINDAUI) -dwxLUA_USEBINDING_WXBASE=$(USE_WXBINDBASE) -dwxLUA_USEBINDING_WXCORE=$(USE_WXBINDCORE) -dwxLUA_USEBINDING_WXGL=$(USE_WXBINDGL) -dwxLUA_USEBINDING_WXHTML=$(USE_WXBINDHTML) -dwxLUA_USEBINDING_WXMEDIA=$(USE_WXBINDMEDIA) -dwxLUA_USEBINDING_WXNET=$(USE_WXBINDNET) -dwxLUA_USEBINDING_WXRICHTEXT=$(USE_WXBINDRICHTEXT) -dwxLUA_USEBINDING_WXSTC=$(USE_WXBINDSTC) -dwxLUA_USEBINDING_WXXML=$(USE_WXBINDXML) -dwxLUA_USEBINDING_WXXRC=$(USE_WXBINDXRC) -i=$(WXSTEDIT_DIR)\include -i=$(WX_DIR)\contrib\include $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluacan_cancom.obj :  .AUTODEPEND ..\..\wxluacan\src\cancom.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(APP_WXLUACAN_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluacan_canlua.obj :  .AUTODEPEND ..\..\wxluacan\src\canlua.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(APP_WXLUACAN_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluacan_cansim.obj :  .AUTODEPEND ..\..\wxluacan\src\cansim.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(APP_WXLUACAN_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluacan_wxluacan_bind.obj :  .AUTODEPEND ..\..\wxluacan\src\wxluacan_bind.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(APP_WXLUACAN_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluacan_cansim.res :  .AUTODEPEND ..\..\wxluacan\src\cansim.rc
	wrc -q -ad -bt=nt -r -fo=$^@  $(____WX_SHARED) $(__WXUNICODE_DEFINE_p) $(__WXDEBUG_DEFINE_p) -d__WXMSW__ -i=$(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX) -i=$(WX_DIR)\include -i=..\..\..\modules -i=.\..\..\.. -i=$(LUA_INCLUDE_DIR) -dwxLUA_USEBINDING_WXADV=$(USE_WXBINDADV) -dwxLUA_USEBINDING_WXAUI=$(USE_WXBINDAUI) -dwxLUA_USEBINDING_WXBASE=$(USE_WXBINDBASE) -dwxLUA_USEBINDING_WXCORE=$(USE_WXBINDCORE) -dwxLUA_USEBINDING_WXGL=$(USE_WXBINDGL) -dwxLUA_USEBINDING_WXHTML=$(USE_WXBINDHTML) -dwxLUA_USEBINDING_WXMEDIA=$(USE_WXBINDMEDIA) -dwxLUA_USEBINDING_WXNET=$(USE_WXBINDNET) -dwxLUA_USEBINDING_WXRICHTEXT=$(USE_WXBINDRICHTEXT) -dwxLUA_USEBINDING_WXSTC=$(USE_WXBINDSTC) -dwxLUA_USEBINDING_WXXML=$(USE_WXBINDXML) -dwxLUA_USEBINDING_WXXRC=$(USE_WXBINDXRC) -i=..\..\..\modules\wxbind\setup $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluafreeze_wxluafreeze.obj :  .AUTODEPEND ..\..\wxluafreeze\src\wxluafreeze.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(APP_WXLUAFREEZE_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\app_wxluafreeze_wxluafreeze.res :  .AUTODEPEND ..\..\wxluafreeze\src\wxluafreeze.rc
	wrc -q -ad -bt=nt -r -fo=$^@  $(____WX_SHARED) $(__WXUNICODE_DEFINE_p) $(__WXDEBUG_DEFINE_p) -d__WXMSW__ -i=$(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX) -i=$(WX_DIR)\include -i=..\..\..\modules -i=.\..\..\.. -i=$(LUA_INCLUDE_DIR) -dwxLUA_USEBINDING_WXADV=$(USE_WXBINDADV) -dwxLUA_USEBINDING_WXAUI=$(USE_WXBINDAUI) -dwxLUA_USEBINDING_WXBASE=$(USE_WXBINDBASE) -dwxLUA_USEBINDING_WXCORE=$(USE_WXBINDCORE) -dwxLUA_USEBINDING_WXGL=$(USE_WXBINDGL) -dwxLUA_USEBINDING_WXHTML=$(USE_WXBINDHTML) -dwxLUA_USEBINDING_WXMEDIA=$(USE_WXBINDMEDIA) -dwxLUA_USEBINDING_WXNET=$(USE_WXBINDNET) -dwxLUA_USEBINDING_WXRICHTEXT=$(USE_WXBINDRICHTEXT) -dwxLUA_USEBINDING_WXSTC=$(USE_WXBINDSTC) -dwxLUA_USEBINDING_WXXML=$(USE_WXBINDXML) -dwxLUA_USEBINDING_WXXRC=$(USE_WXBINDXRC) $<

