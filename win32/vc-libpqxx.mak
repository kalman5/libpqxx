################################################################################
# AUTOMATICALLY GENERATED FILE -- DO NOT EDIT.
#
# This file is generated automatically by libpqxx's template2mak.py script, and
# will be rewritten from time to time.
#
# If you modify this file, chances are your modifications will be lost.
#
# The template2mak.py script should be available in the tools directory of the
# libpqxx source archive.
#
# Generated from template './win32/vc-libpqxx.mak.template'.
################################################################################
# Visual C++ makefile for libpqxx
# This file was created by Bart Samwel.

default:
	@echo LIBPQXX Makefile for Visual C++ Available Targets
	@echo -------------------------------------------------
	@echo.
	@echo Static library targets:
	@echo.
	@echo STATIC
	@echo STATICRELEASE (release mode only)
	@echo STATICDEBUG (debug mode only)
	@echo.
	@echo Dynamic Link Library (DLL) targets:
	@echo.
	@echo DLL
	@echo DLLRELEASE
	@echo DLLDEBUG
	@echo.
	@echo Other targets:
	@echo.
	@echo ALL: build both the DLL and STATIC builds.
	@echo CLEAN: clean up all output.
	@echo.
	@echo It is recommended that you link to libpqxx statically. Therefore, you should
	@echo normally build the "STATIC" target. If you want to link your programto libpqxx
	@echo dynamically, build target "DLL" and compile your program with preprocessor
	@echo define "PQXX_SHARED". This will make your program link against the DLL version
	@echo of libpqxx.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF

!include win32/common



########################################################
# Configuration
########################################################



# Output DLL/LIB files. No extensions, they are added automatically!
OUTDIR=lib
OUTFILE_STATICDEBUG=$(OUTDIR)\libpqxx_staticD
OUTFILE_STATICRELEASE=$(OUTDIR)\libpqxx_static
OUTFILE_DLLDEBUG=$(OUTDIR)\libpqxxD
OUTFILE_DLLRELEASE=$(OUTDIR)\libpqxx

# Directories for intermediate output.
INTDIR_STATICDEBUG=ObjStaticDebug
INTDIR_STATICRELEASE=ObjStaticRelease
INTDIR_DLLDEBUG=ObjDllDebug
INTDIR_DLLRELEASE=ObjDllRelease

# C++ compiler, linker (for DLLs) and library tool (for static builds).
CXX=cl.exe
LINK=link.exe
LIBTOOL=link.exe -lib

# The options common to all the different builds.
CXX_FLAGS_BASE=/std:c++17 /nologo /W3 /EHsc /FD /GR /c \
    /I "include" /I "$(PGSQLINC)" /I "$(LIBPQINC)" \
    /D "WIN32" /D "_MBCS" /D "_WINDOWS" /D "PQXX_INTERNAL" /D "NOMINMAX"

CXX_FLAGS_DLLRELEASE=$(CXX_FLAGS_BASE) /MD  /D "NDEBUG" /D "PQXX_SHARED"
CXX_FLAGS_DLLDEBUG=$(CXX_FLAGS_BASE) /MDd /Gm /ZI /Od /D "_DEBUG" /D "PQXX_SHARED" /RTC1
CXX_FLAGS_STATICRELEASE=$(CXX_FLAGS_BASE) /MD /D "_LIB" /D "NDEBUG"
CXX_FLAGS_STATICDEBUG=$(CXX_FLAGS_BASE) /MDd /Gm /ZI /Od /D "_LIB" /D "_DEBUG" /RTC1

LINK_FLAGS_BASE=kernel32.lib ws2_32.lib advapi32.lib /nologo /dll shell32.lib secur32.lib wldap32.lib

LINK_FLAGS_DLLRELEASE=$(LINK_FLAGS_BASE) /libpath:"$(LIBPQPATH)" "$(LIBPQLIB)"
LINK_FLAGS_DLLDEBUG=$(LINK_FLAGS_BASE) /libpath:"$(LIBPQDPATH)" "$(LIBPQDLIB)" /debug

LIB_FLAGS=/nologo



########################################################
# List of intermediate files
########################################################

OBJ_STATICDEBUG=\
       "$(INTDIR_STATICDEBUG)\array.obj" \
       "$(INTDIR_STATICDEBUG)\binarystring.obj" \
       "$(INTDIR_STATICDEBUG)\connection.obj" \
       "$(INTDIR_STATICDEBUG)\cursor.obj" \
       "$(INTDIR_STATICDEBUG)\encodings.obj" \
       "$(INTDIR_STATICDEBUG)\errorhandler.obj" \
       "$(INTDIR_STATICDEBUG)\except.obj" \
       "$(INTDIR_STATICDEBUG)\field.obj" \
       "$(INTDIR_STATICDEBUG)\largeobject.obj" \
       "$(INTDIR_STATICDEBUG)\notification.obj" \
       "$(INTDIR_STATICDEBUG)\pipeline.obj" \
       "$(INTDIR_STATICDEBUG)\result.obj" \
       "$(INTDIR_STATICDEBUG)\robusttransaction.obj" \
       "$(INTDIR_STATICDEBUG)\row.obj" \
       "$(INTDIR_STATICDEBUG)\sql_cursor.obj" \
       "$(INTDIR_STATICDEBUG)\statement_parameters.obj" \
       "$(INTDIR_STATICDEBUG)\strconv.obj" \
       "$(INTDIR_STATICDEBUG)\stream_from.obj" \
       "$(INTDIR_STATICDEBUG)\stream_to.obj" \
       "$(INTDIR_STATICDEBUG)\subtransaction.obj" \
       "$(INTDIR_STATICDEBUG)\transaction.obj" \
       "$(INTDIR_STATICDEBUG)\transaction_base.obj" \
       "$(INTDIR_STATICDEBUG)\util.obj" \
       "$(INTDIR_STATICDEBUG)\version.obj" \

OBJ_STATICRELEASE=\
       "$(INTDIR_STATICRELEASE)\array.obj" \
       "$(INTDIR_STATICRELEASE)\binarystring.obj" \
       "$(INTDIR_STATICRELEASE)\connection.obj" \
       "$(INTDIR_STATICRELEASE)\cursor.obj" \
       "$(INTDIR_STATICRELEASE)\encodings.obj" \
       "$(INTDIR_STATICRELEASE)\errorhandler.obj" \
       "$(INTDIR_STATICRELEASE)\except.obj" \
       "$(INTDIR_STATICRELEASE)\field.obj" \
       "$(INTDIR_STATICRELEASE)\largeobject.obj" \
       "$(INTDIR_STATICRELEASE)\notification.obj" \
       "$(INTDIR_STATICRELEASE)\pipeline.obj" \
       "$(INTDIR_STATICRELEASE)\result.obj" \
       "$(INTDIR_STATICRELEASE)\robusttransaction.obj" \
       "$(INTDIR_STATICRELEASE)\row.obj" \
       "$(INTDIR_STATICRELEASE)\sql_cursor.obj" \
       "$(INTDIR_STATICRELEASE)\statement_parameters.obj" \
       "$(INTDIR_STATICRELEASE)\strconv.obj" \
       "$(INTDIR_STATICRELEASE)\stream_from.obj" \
       "$(INTDIR_STATICRELEASE)\stream_to.obj" \
       "$(INTDIR_STATICRELEASE)\subtransaction.obj" \
       "$(INTDIR_STATICRELEASE)\transaction.obj" \
       "$(INTDIR_STATICRELEASE)\transaction_base.obj" \
       "$(INTDIR_STATICRELEASE)\util.obj" \
       "$(INTDIR_STATICRELEASE)\version.obj" \

OBJ_DLLDEBUG=\
       "$(INTDIR_DLLDEBUG)\array.obj" \
       "$(INTDIR_DLLDEBUG)\binarystring.obj" \
       "$(INTDIR_DLLDEBUG)\connection.obj" \
       "$(INTDIR_DLLDEBUG)\cursor.obj" \
       "$(INTDIR_DLLDEBUG)\encodings.obj" \
       "$(INTDIR_DLLDEBUG)\errorhandler.obj" \
       "$(INTDIR_DLLDEBUG)\except.obj" \
       "$(INTDIR_DLLDEBUG)\field.obj" \
       "$(INTDIR_DLLDEBUG)\largeobject.obj" \
       "$(INTDIR_DLLDEBUG)\notification.obj" \
       "$(INTDIR_DLLDEBUG)\pipeline.obj" \
       "$(INTDIR_DLLDEBUG)\result.obj" \
       "$(INTDIR_DLLDEBUG)\robusttransaction.obj" \
       "$(INTDIR_DLLDEBUG)\row.obj" \
       "$(INTDIR_DLLDEBUG)\sql_cursor.obj" \
       "$(INTDIR_DLLDEBUG)\statement_parameters.obj" \
       "$(INTDIR_DLLDEBUG)\strconv.obj" \
       "$(INTDIR_DLLDEBUG)\stream_from.obj" \
       "$(INTDIR_DLLDEBUG)\stream_to.obj" \
       "$(INTDIR_DLLDEBUG)\subtransaction.obj" \
       "$(INTDIR_DLLDEBUG)\transaction.obj" \
       "$(INTDIR_DLLDEBUG)\transaction_base.obj" \
       "$(INTDIR_DLLDEBUG)\util.obj" \
       "$(INTDIR_DLLDEBUG)\version.obj" \
       "$(INTDIR_DLLDEBUG)\libpqxx.obj" \

OBJ_DLLRELEASE=\
       "$(INTDIR_DLLRELEASE)\array.obj" \
       "$(INTDIR_DLLRELEASE)\binarystring.obj" \
       "$(INTDIR_DLLRELEASE)\connection.obj" \
       "$(INTDIR_DLLRELEASE)\cursor.obj" \
       "$(INTDIR_DLLRELEASE)\encodings.obj" \
       "$(INTDIR_DLLRELEASE)\errorhandler.obj" \
       "$(INTDIR_DLLRELEASE)\except.obj" \
       "$(INTDIR_DLLRELEASE)\field.obj" \
       "$(INTDIR_DLLRELEASE)\largeobject.obj" \
       "$(INTDIR_DLLRELEASE)\notification.obj" \
       "$(INTDIR_DLLRELEASE)\pipeline.obj" \
       "$(INTDIR_DLLRELEASE)\result.obj" \
       "$(INTDIR_DLLRELEASE)\robusttransaction.obj" \
       "$(INTDIR_DLLRELEASE)\row.obj" \
       "$(INTDIR_DLLRELEASE)\sql_cursor.obj" \
       "$(INTDIR_DLLRELEASE)\statement_parameters.obj" \
       "$(INTDIR_DLLRELEASE)\strconv.obj" \
       "$(INTDIR_DLLRELEASE)\stream_from.obj" \
       "$(INTDIR_DLLRELEASE)\stream_to.obj" \
       "$(INTDIR_DLLRELEASE)\subtransaction.obj" \
       "$(INTDIR_DLLRELEASE)\transaction.obj" \
       "$(INTDIR_DLLRELEASE)\transaction_base.obj" \
       "$(INTDIR_DLLRELEASE)\util.obj" \
       "$(INTDIR_DLLRELEASE)\version.obj" \
       "$(INTDIR_DLLRELEASE)\libpqxx.obj" \



########################################################
# Logical targets
########################################################

static: staticdebug staticrelease

dll: dlldebug dllrelease

all: static dll

$(OUTDIR):
	-@mkdir $(OUTDIR)

staticdebug: $(OUTFILE_STATICDEBUG).lib $(OUTDIR) $(OUTDIR)\$(LIBPQDDLL) $(OUTDIR)\$(LIBPQDLIB)
staticrelease: $(OUTFILE_STATICRELEASE).lib $(OUTDIR) $(OUTDIR)\$(LIBPQDLL) $(OUTDIR)\$(LIBPQLIB)

dlldebug: $(OUTFILE_DLLDEBUG).dll $(OUTDIR) $(OUTDIR)\$(LIBPQDDLL)

dllrelease: $(OUTFILE_DLLRELEASE).dll $(OUTDIR) $(OUTDIR)\$(LIBPQDLL)

clean:
	@echo Deleting all intermediate output files and the contents of $(OUTDIR).
	-@del /Q "$(INTDIR_STATICDEBUG)\*"
	-@del /Q "$(INTDIR_STATICRELEASE)\*"
	-@del /Q "$(INTDIR_DLLDEBUG)\*"
	-@del /Q "$(INTDIR_DLLRELEASE)\*"
	-@del /Q "$(OUTDIR)\*"



########################################################
# Physical targets
########################################################

$(OUTDIR)\$(LIBPQDLL):: $(OUTDIR)
	@echo -------------------------------------------------------------
	@echo Copying $(LIBPQDLL) to $(OUTDIR).
	@echo.
	@echo IMPORTANT: you MUST copy this $(LIBPQDLL) into the directory
	@echo where your program's .EXE resides. The system $(LIBPQDLL) is
	@echo not necessarily compatible with the libpq include files that
	@echo you built libpqxx with. Do NOT copy this file into your
	@echo Windows system32 directory, that may break other programs.
	@echo Instead, keep it with your program and distribute it along
	@echo with the program.
	@echo -------------------------------------------------------------
	copy "$(LIBPQPATH)\$(LIBPQDLL)" "$(OUTDIR)"

$(OUTDIR)\$(LIBPQDDLL):: $(OUTDIR)
	@echo -------------------------------------------------------------
	@echo Copying $(LIBPQDDLL) to $(OUTDIR).
	@echo.
	@echo IMPORTANT: you MUST copy this $(LIBPQDDLL) into the directory
	@echo where your program's .EXE resides, or you must make sure that
	@echo it is in your system PATH.
	@echo -------------------------------------------------------------
	copy "$(LIBPQDPATH)\$(LIBPQDDLL)" "$(OUTDIR)"

$(OUTDIR)\$(LIBPQLIB):: $(OUTDIR)
	copy "$(LIBPQPATH)\$(LIBPQLIB)" "$(OUTDIR)"

$(OUTDIR)\$(LIBPQDLIB):: $(OUTDIR)
	copy "$(LIBPQDPATH)\$(LIBPQDLIB)" "$(OUTDIR)"

$(OUTFILE_STATICDEBUG).lib:: $(OUTDIR) $(OBJ_STATICDEBUG)
	$(LIBTOOL) $(LIB_FLAGS) $(OBJ_STATICDEBUG) /out:"$(OUTFILE_STATICDEBUG).lib"

$(OUTFILE_STATICRELEASE).lib:: $(OUTDIR) $(OBJ_STATICRELEASE)
	$(LIBTOOL) $(LIB_FLAGS) $(OBJ_STATICRELEASE) /out:"$(OUTFILE_STATICRELEASE).lib"

$(OUTFILE_DLLDEBUG).dll:: $(OUTDIR) $(OBJ_DLLDEBUG)
	$(LINK) $(LINK_FLAGS_DLLDEBUG) $(OBJ_DLLDEBUG) /out:"$(OUTFILE_DLLDEBUG).dll" /implib:"$(OUTFILE_DLLDEBUG).lib"

$(OUTFILE_DLLRELEASE).dll:: $(OUTDIR) $(OBJ_DLLRELEASE)
	$(LINK) $(LINK_FLAGS_DLLRELEASE) $(OBJ_DLLRELEASE) /out:"$(OUTFILE_DLLRELEASE).dll" /implib:"$(OUTFILE_DLLRELEASE).lib"


$(INTDIR_STATICDEBUG)::
	-@mkdir $(INTDIR_STATICDEBUG)

$(INTDIR_STATICRELEASE)::
	-@mkdir $(INTDIR_STATICRELEASE)

$(INTDIR_DLLDEBUG)::
	-@mkdir $(INTDIR_DLLDEBUG)

$(INTDIR_DLLRELEASE)::
	-@mkdir $(INTDIR_DLLRELEASE)




########################################################
# Physical intermediate files
########################################################



"$(INTDIR_STATICRELEASE)\array.obj": src/array.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/array.cxx

"$(INTDIR_STATICDEBUG)\array.obj": src/array.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/array.cxx


"$(INTDIR_STATICRELEASE)\binarystring.obj": src/binarystring.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/binarystring.cxx

"$(INTDIR_STATICDEBUG)\binarystring.obj": src/binarystring.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/binarystring.cxx


"$(INTDIR_STATICRELEASE)\connection.obj": src/connection.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/connection.cxx

"$(INTDIR_STATICDEBUG)\connection.obj": src/connection.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/connection.cxx


"$(INTDIR_STATICRELEASE)\cursor.obj": src/cursor.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/cursor.cxx

"$(INTDIR_STATICDEBUG)\cursor.obj": src/cursor.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/cursor.cxx


"$(INTDIR_STATICRELEASE)\encodings.obj": src/encodings.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/encodings.cxx

"$(INTDIR_STATICDEBUG)\encodings.obj": src/encodings.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/encodings.cxx


"$(INTDIR_STATICRELEASE)\errorhandler.obj": src/errorhandler.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/errorhandler.cxx

"$(INTDIR_STATICDEBUG)\errorhandler.obj": src/errorhandler.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/errorhandler.cxx


"$(INTDIR_STATICRELEASE)\except.obj": src/except.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/except.cxx

"$(INTDIR_STATICDEBUG)\except.obj": src/except.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/except.cxx


"$(INTDIR_STATICRELEASE)\field.obj": src/field.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/field.cxx

"$(INTDIR_STATICDEBUG)\field.obj": src/field.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/field.cxx


"$(INTDIR_STATICRELEASE)\largeobject.obj": src/largeobject.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/largeobject.cxx

"$(INTDIR_STATICDEBUG)\largeobject.obj": src/largeobject.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/largeobject.cxx


"$(INTDIR_STATICRELEASE)\notification.obj": src/notification.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/notification.cxx

"$(INTDIR_STATICDEBUG)\notification.obj": src/notification.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/notification.cxx


"$(INTDIR_STATICRELEASE)\pipeline.obj": src/pipeline.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/pipeline.cxx

"$(INTDIR_STATICDEBUG)\pipeline.obj": src/pipeline.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/pipeline.cxx


"$(INTDIR_STATICRELEASE)\result.obj": src/result.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/result.cxx

"$(INTDIR_STATICDEBUG)\result.obj": src/result.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/result.cxx


"$(INTDIR_STATICRELEASE)\robusttransaction.obj": src/robusttransaction.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/robusttransaction.cxx

"$(INTDIR_STATICDEBUG)\robusttransaction.obj": src/robusttransaction.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/robusttransaction.cxx


"$(INTDIR_STATICRELEASE)\row.obj": src/row.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/row.cxx

"$(INTDIR_STATICDEBUG)\row.obj": src/row.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/row.cxx


"$(INTDIR_STATICRELEASE)\sql_cursor.obj": src/sql_cursor.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/sql_cursor.cxx

"$(INTDIR_STATICDEBUG)\sql_cursor.obj": src/sql_cursor.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/sql_cursor.cxx


"$(INTDIR_STATICRELEASE)\statement_parameters.obj": src/statement_parameters.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/statement_parameters.cxx

"$(INTDIR_STATICDEBUG)\statement_parameters.obj": src/statement_parameters.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/statement_parameters.cxx


"$(INTDIR_STATICRELEASE)\strconv.obj": src/strconv.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/strconv.cxx

"$(INTDIR_STATICDEBUG)\strconv.obj": src/strconv.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/strconv.cxx


"$(INTDIR_STATICRELEASE)\stream_from.obj": src/stream_from.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/stream_from.cxx

"$(INTDIR_STATICDEBUG)\stream_from.obj": src/stream_from.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/stream_from.cxx


"$(INTDIR_STATICRELEASE)\stream_to.obj": src/stream_to.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/stream_to.cxx

"$(INTDIR_STATICDEBUG)\stream_to.obj": src/stream_to.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/stream_to.cxx


"$(INTDIR_STATICRELEASE)\subtransaction.obj": src/subtransaction.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/subtransaction.cxx

"$(INTDIR_STATICDEBUG)\subtransaction.obj": src/subtransaction.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/subtransaction.cxx


"$(INTDIR_STATICRELEASE)\transaction.obj": src/transaction.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/transaction.cxx

"$(INTDIR_STATICDEBUG)\transaction.obj": src/transaction.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/transaction.cxx


"$(INTDIR_STATICRELEASE)\transaction_base.obj": src/transaction_base.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/transaction_base.cxx

"$(INTDIR_STATICDEBUG)\transaction_base.obj": src/transaction_base.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/transaction_base.cxx


"$(INTDIR_STATICRELEASE)\util.obj": src/util.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/util.cxx

"$(INTDIR_STATICDEBUG)\util.obj": src/util.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/util.cxx


"$(INTDIR_STATICRELEASE)\version.obj": src/version.cxx $(INTDIR_STATICRELEASE)
	$(CXX) $(CXX_FLAGS_STATICRELEASE) /Fo"$(INTDIR_STATICRELEASE)\\" /Fd"$(INTDIR_STATICRELEASE)\\" src/version.cxx

"$(INTDIR_STATICDEBUG)\version.obj": src/version.cxx $(INTDIR_STATICDEBUG)
	$(CXX) $(CXX_FLAGS_STATICDEBUG) /Fo"$(INTDIR_STATICDEBUG)\\" /Fd"$(INTDIR_STATICDEBUG)\\" src/version.cxx




"$(INTDIR_DLLRELEASE)\array.obj": src/array.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/array.cxx

"$(INTDIR_DLLDEBUG)\array.obj": src/array.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/array.cxx


"$(INTDIR_DLLRELEASE)\binarystring.obj": src/binarystring.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/binarystring.cxx

"$(INTDIR_DLLDEBUG)\binarystring.obj": src/binarystring.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/binarystring.cxx


"$(INTDIR_DLLRELEASE)\connection.obj": src/connection.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/connection.cxx

"$(INTDIR_DLLDEBUG)\connection.obj": src/connection.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/connection.cxx


"$(INTDIR_DLLRELEASE)\cursor.obj": src/cursor.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/cursor.cxx

"$(INTDIR_DLLDEBUG)\cursor.obj": src/cursor.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/cursor.cxx


"$(INTDIR_DLLRELEASE)\encodings.obj": src/encodings.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/encodings.cxx

"$(INTDIR_DLLDEBUG)\encodings.obj": src/encodings.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/encodings.cxx


"$(INTDIR_DLLRELEASE)\errorhandler.obj": src/errorhandler.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/errorhandler.cxx

"$(INTDIR_DLLDEBUG)\errorhandler.obj": src/errorhandler.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/errorhandler.cxx


"$(INTDIR_DLLRELEASE)\except.obj": src/except.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/except.cxx

"$(INTDIR_DLLDEBUG)\except.obj": src/except.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/except.cxx


"$(INTDIR_DLLRELEASE)\field.obj": src/field.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/field.cxx

"$(INTDIR_DLLDEBUG)\field.obj": src/field.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/field.cxx


"$(INTDIR_DLLRELEASE)\largeobject.obj": src/largeobject.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/largeobject.cxx

"$(INTDIR_DLLDEBUG)\largeobject.obj": src/largeobject.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/largeobject.cxx


"$(INTDIR_DLLRELEASE)\notification.obj": src/notification.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/notification.cxx

"$(INTDIR_DLLDEBUG)\notification.obj": src/notification.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/notification.cxx


"$(INTDIR_DLLRELEASE)\pipeline.obj": src/pipeline.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/pipeline.cxx

"$(INTDIR_DLLDEBUG)\pipeline.obj": src/pipeline.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/pipeline.cxx


"$(INTDIR_DLLRELEASE)\result.obj": src/result.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/result.cxx

"$(INTDIR_DLLDEBUG)\result.obj": src/result.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/result.cxx


"$(INTDIR_DLLRELEASE)\robusttransaction.obj": src/robusttransaction.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/robusttransaction.cxx

"$(INTDIR_DLLDEBUG)\robusttransaction.obj": src/robusttransaction.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/robusttransaction.cxx


"$(INTDIR_DLLRELEASE)\row.obj": src/row.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/row.cxx

"$(INTDIR_DLLDEBUG)\row.obj": src/row.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/row.cxx


"$(INTDIR_DLLRELEASE)\sql_cursor.obj": src/sql_cursor.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/sql_cursor.cxx

"$(INTDIR_DLLDEBUG)\sql_cursor.obj": src/sql_cursor.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/sql_cursor.cxx


"$(INTDIR_DLLRELEASE)\statement_parameters.obj": src/statement_parameters.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/statement_parameters.cxx

"$(INTDIR_DLLDEBUG)\statement_parameters.obj": src/statement_parameters.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/statement_parameters.cxx


"$(INTDIR_DLLRELEASE)\strconv.obj": src/strconv.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/strconv.cxx

"$(INTDIR_DLLDEBUG)\strconv.obj": src/strconv.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/strconv.cxx


"$(INTDIR_DLLRELEASE)\stream_from.obj": src/stream_from.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/stream_from.cxx

"$(INTDIR_DLLDEBUG)\stream_from.obj": src/stream_from.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/stream_from.cxx


"$(INTDIR_DLLRELEASE)\stream_to.obj": src/stream_to.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/stream_to.cxx

"$(INTDIR_DLLDEBUG)\stream_to.obj": src/stream_to.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/stream_to.cxx


"$(INTDIR_DLLRELEASE)\subtransaction.obj": src/subtransaction.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/subtransaction.cxx

"$(INTDIR_DLLDEBUG)\subtransaction.obj": src/subtransaction.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/subtransaction.cxx


"$(INTDIR_DLLRELEASE)\transaction.obj": src/transaction.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/transaction.cxx

"$(INTDIR_DLLDEBUG)\transaction.obj": src/transaction.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/transaction.cxx


"$(INTDIR_DLLRELEASE)\transaction_base.obj": src/transaction_base.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/transaction_base.cxx

"$(INTDIR_DLLDEBUG)\transaction_base.obj": src/transaction_base.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/transaction_base.cxx


"$(INTDIR_DLLRELEASE)\util.obj": src/util.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/util.cxx

"$(INTDIR_DLLDEBUG)\util.obj": src/util.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/util.cxx


"$(INTDIR_DLLRELEASE)\version.obj": src/version.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" src/version.cxx

"$(INTDIR_DLLDEBUG)\version.obj": src/version.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" src/version.cxx


"$(INTDIR_DLLRELEASE)\libpqxx.obj": win32/libpqxx.cxx $(INTDIR_DLLRELEASE)
	$(CXX) $(CXX_FLAGS_DLLRELEASE) /Fo"$(INTDIR_DLLRELEASE)\\" /Fd"$(INTDIR_DLLRELEASE)\\" win32/libpqxx.cxx

"$(INTDIR_DLLDEBUG)\libpqxx.obj": win32/libpqxx.cxx $(INTDIR_DLLDEBUG)
	$(CXX) $(CXX_FLAGS_DLLDEBUG) /Fo"$(INTDIR_DLLDEBUG)\\" /Fd"$(INTDIR_DLLDEBUG)\\" win32/libpqxx.cxx


