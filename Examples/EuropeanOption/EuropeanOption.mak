# Microsoft Developer Studio Generated NMAKE File, Based on EuropeanOption.dsp
!IF "$(CFG)" == ""
CFG=EuropeanOption - Win32 OnTheEdgeDebug
!MESSAGE No configuration specified. Defaulting to EuropeanOption - Win32 OnTheEdgeDebug.
!ENDIF 

!IF "$(CFG)" != "EuropeanOption - Win32 Release" && "$(CFG)" != "EuropeanOption - Win32 Debug" && "$(CFG)" != "EuropeanOption - Win32 OnTheEdgeRelease" && "$(CFG)" != "EuropeanOption - Win32 OnTheEdgeDebug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "EuropeanOption.mak" CFG="EuropeanOption - Win32 OnTheEdgeDebug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "EuropeanOption - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "EuropeanOption - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "EuropeanOption - Win32 OnTheEdgeRelease" (based on "Win32 (x86) Console Application")
!MESSAGE "EuropeanOption - Win32 OnTheEdgeDebug" (based on "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "EuropeanOption - Win32 Release"

OUTDIR=.\build\Release
INTDIR=.\build\Release
# Begin Custom Macros
OutDir=.\build\Release
# End Custom Macros

ALL : "$(OUTDIR)\EuropeanOption.exe" "$(OUTDIR)\EuropeanOption.bsc"


CLEAN :
	-@erase "$(INTDIR)\EuropeanOption.obj"
	-@erase "$(INTDIR)\EuropeanOption.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\EuropeanOption.bsc"
	-@erase "$(OUTDIR)\EuropeanOption.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GR /GX /O2 /I "$(QL_DIR)" /D "NDEBUG" /D "WIN32" /D "_CONSOLE" /D "_MBCS" /D "NOMINMAX" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\EuropeanOption.pch" /YX"quantlib.hpp" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\EuropeanOption.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\EuropeanOption.sbr"

"$(OUTDIR)\EuropeanOption.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\EuropeanOption.pdb" /machine:I386 /out:"$(OUTDIR)\EuropeanOption.exe" /libpath:"$(QL_DIR)\lib\Win32\VisualStudio\\" 
LINK32_OBJS= \
	"$(INTDIR)\EuropeanOption.obj"

"$(OUTDIR)\EuropeanOption.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "EuropeanOption - Win32 Debug"

OUTDIR=.\build\Debug
INTDIR=.\build\Debug
# Begin Custom Macros
OutDir=.\build\Debug
# End Custom Macros

ALL : "$(OUTDIR)\EuropeanOption.exe" "$(OUTDIR)\EuropeanOption.bsc"


CLEAN :
	-@erase "$(INTDIR)\EuropeanOption.obj"
	-@erase "$(INTDIR)\EuropeanOption.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\EuropeanOption.bsc"
	-@erase "$(OUTDIR)\EuropeanOption.exe"
	-@erase "$(OUTDIR)\EuropeanOption.ilk"
	-@erase "$(OUTDIR)\EuropeanOption.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GR /GX /ZI /Od /I "$(QL_DIR)" /D "_DEBUG" /D "QL_DEBUG" /D "WIN32" /D "_CONSOLE" /D "_MBCS" /D "NOMINMAX" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\EuropeanOption.pch" /YX"quantlib.hpp" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\EuropeanOption.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\EuropeanOption.sbr"

"$(OUTDIR)\EuropeanOption.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:yes /pdb:"$(OUTDIR)\EuropeanOption.pdb" /debug /machine:I386 /out:"$(OUTDIR)\EuropeanOption.exe" /libpath:"$(QL_DIR)\lib\Win32\VisualStudio\\" 
LINK32_OBJS= \
	"$(INTDIR)\EuropeanOption.obj"

"$(OUTDIR)\EuropeanOption.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "EuropeanOption - Win32 OnTheEdgeRelease"

OUTDIR=.\build\OnTheEdgeRelease
INTDIR=.\build\OnTheEdgeRelease
# Begin Custom Macros
OutDir=.\build\OnTheEdgeRelease
# End Custom Macros

ALL : "$(OUTDIR)\EuropeanOption.exe" "$(OUTDIR)\EuropeanOption.bsc"


CLEAN :
	-@erase "$(INTDIR)\EuropeanOption.obj"
	-@erase "$(INTDIR)\EuropeanOption.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\EuropeanOption.bsc"
	-@erase "$(OUTDIR)\EuropeanOption.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GR /GX /O2 /I "..\..\\" /D "NDEBUG" /D "WIN32" /D "_CONSOLE" /D "_MBCS" /D "NOMINMAX" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\EuropeanOption.pch" /YX"quantlib.hpp" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\EuropeanOption.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\EuropeanOption.sbr"

"$(OUTDIR)\EuropeanOption.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\EuropeanOption.pdb" /machine:I386 /out:"$(OUTDIR)\EuropeanOption.exe" /libpath:"..\..\lib\Win32\VisualStudio\\" 
LINK32_OBJS= \
	"$(INTDIR)\EuropeanOption.obj"

"$(OUTDIR)\EuropeanOption.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "EuropeanOption - Win32 OnTheEdgeDebug"

OUTDIR=.\build\OnTheEdgeDebug
INTDIR=.\build\OnTheEdgeDebug
# Begin Custom Macros
OutDir=.\build\OnTheEdgeDebug
# End Custom Macros

ALL : "$(OUTDIR)\EuropeanOption.exe" "$(OUTDIR)\EuropeanOption.bsc"


CLEAN :
	-@erase "$(INTDIR)\EuropeanOption.obj"
	-@erase "$(INTDIR)\EuropeanOption.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\EuropeanOption.bsc"
	-@erase "$(OUTDIR)\EuropeanOption.exe"
	-@erase "$(OUTDIR)\EuropeanOption.ilk"
	-@erase "$(OUTDIR)\EuropeanOption.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GR /GX /ZI /Od /I "..\..\\" /D "_DEBUG" /D "QL_DEBUG" /D "WIN32" /D "_CONSOLE" /D "_MBCS" /D "NOMINMAX" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\EuropeanOption.pch" /YX"quantlib.hpp" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\EuropeanOption.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\EuropeanOption.sbr"

"$(OUTDIR)\EuropeanOption.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:yes /pdb:"$(OUTDIR)\EuropeanOption.pdb" /debug /machine:I386 /out:"$(OUTDIR)\EuropeanOption.exe" /libpath:"..\..\lib\Win32\VisualStudio\\" 
LINK32_OBJS= \
	"$(INTDIR)\EuropeanOption.obj"

"$(OUTDIR)\EuropeanOption.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("EuropeanOption.dep")
!INCLUDE "EuropeanOption.dep"
!ELSE 
!MESSAGE Warning: cannot find "EuropeanOption.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "EuropeanOption - Win32 Release" || "$(CFG)" == "EuropeanOption - Win32 Debug" || "$(CFG)" == "EuropeanOption - Win32 OnTheEdgeRelease" || "$(CFG)" == "EuropeanOption - Win32 OnTheEdgeDebug"
SOURCE=.\EuropeanOption.cpp

"$(INTDIR)\EuropeanOption.obj"	"$(INTDIR)\EuropeanOption.sbr" : $(SOURCE) "$(INTDIR)"



!ENDIF 

