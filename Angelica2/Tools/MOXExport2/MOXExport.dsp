# Microsoft Developer Studio Project File - Name="MOXExport" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=MOXExport - Win32 Hybrid
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "MOXExport.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "MOXExport.mak" CFG="MOXExport - Win32 Hybrid"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "MOXExport - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "MOXExport - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "MOXExport - Win32 Hybrid" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""$/MAX PlugIn/MOXExport", NEAAAAAA"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "MOXExport - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /YX /FD /c
# ADD CPP /nologo /G6 /MD /W3 /O2 /I "C:\3dsmax4\maxsdk\include" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /YX /FD /LD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x804 /d "NDEBUG"
# ADD RSC /l 0x804 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib comctl32.lib bmm.lib core.lib geom.lib gfx.lib mesh.lib maxutil.lib maxscrpt.lib gup.lib paramblk2.lib /nologo /base:"0x6e110000" /subsystem:windows /dll /machine:I386 /out:"Bin\MOXExport2.dlu" /libpath:"C:\3dsmax4\maxsdk\lib" /release
# Begin Custom Build
TargetPath=.\Bin\MOXExport2.dlu
TargetName=MOXExport2
InputPath=.\Bin\MOXExport2.dlu
SOURCE="$(InputPath)"

"E:\Graphics\3dsmax4\plugins\$(TargetName).dlu" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	echo copy plugin to max folder 
	copy $(TargetPath) E:\Graphics\3dsmax4\plugins\$(TargetName).dlu 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "MOXExport - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MDd /W3 /Gm /ZI /Od /I "C:\3dsmax3_1\maxsdk\include" /I "C:\3dsmax4\maxsdk\include" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_USRDLL" /YX /FD /LD /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x804 /d "_DEBUG"
# ADD RSC /l 0x804 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib comctl32.lib bmm.lib core.lib geom.lib gfx.lib mesh.lib maxutil.lib maxscrpt.lib gup.lib paramblk2.lib /nologo /base:"0x6e110000" /subsystem:windows /dll /debug /machine:I386 /out:"Bin\MOXExport2.dlu" /pdbtype:sept /libpath:"C:\3dsmax4\maxsdk\lib"
# Begin Custom Build
TargetPath=.\Bin\MOXExport2.dlu
TargetName=MOXExport2
InputPath=.\Bin\MOXExport2.dlu
SOURCE="$(InputPath)"

"E:\Graphics\3dsmax4\plugins\$(TargetName).dlu" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	echo copy plugin to max folder 
	copy $(TargetPath) E:\Graphics\3dsmax4\plugins\$(TargetName).dlu 
	copy .\Bin\*.ilk E:\Graphics\3dsmax4\plugins 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "MOXExport - Win32 Hybrid"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "MOXExport___Win32_Hybrid"
# PROP BASE Intermediate_Dir "MOXExport___Win32_Hybrid"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "MOXExport___Win32_Hybrid"
# PROP Intermediate_Dir "MOXExport___Win32_Hybrid"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MD /W3 /Gm /ZI /Od /I "C:\3dsmax4\maxsdk\include" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /LD /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x804 /d "_DEBUG"
# ADD RSC /l 0x804 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib comctl32.lib bmm.lib core.lib geom.lib gfx.lib mesh.lib maxutil.lib maxscrpt.lib gup.lib paramblk2.lib /nologo /base:"0x6e110000" /subsystem:windows /dll /debug /machine:I386 /out:"Bin\MOXExport2.dlu" /pdbtype:sept /libpath:"C:\3dsmax4\maxsdk\lib"
# Begin Custom Build
TargetPath=.\Bin\MOXExport2.dlu
TargetName=MOXExport2
InputPath=.\Bin\MOXExport2.dlu
SOURCE="$(InputPath)"

"E:\Graphics\3dsmax4\plugins\$(TargetName).dlu" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	echo copy plugin to max folder 
	copy $(TargetPath) E:\Graphics\3dsmax4\plugins\$(TargetName).dlu 
	
# End Custom Build

!ENDIF 

# Begin Target

# Name "MOXExport - Win32 Release"
# Name "MOXExport - Win32 Debug"
# Name "MOXExport - Win32 Hybrid"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\A3DBox.cpp
# End Source File
# Begin Source File

SOURCE=.\A3DFile.cpp
# End Source File
# Begin Source File

SOURCE=.\A3DFont.cpp
# End Source File
# Begin Source File

SOURCE=.\A3DFrame.cpp
# End Source File
# Begin Source File

SOURCE=.\A3DFuncs.cpp
# End Source File
# Begin Source File

SOURCE=.\A3DMaterial.cpp
# End Source File
# Begin Source File

SOURCE=.\A3DMesh.cpp
# End Source File
# Begin Source File

SOURCE=.\A3DModel.cpp
# End Source File
# Begin Source File

SOURCE=.\A3DOBBFuncs.cpp
# End Source File
# Begin Source File

SOURCE=.\A3DObject.cpp
# End Source File
# Begin Source File

SOURCE=.\A3DTexture.cpp
# End Source File
# Begin Source File

SOURCE=.\AList.cpp
# End Source File
# Begin Source File

SOURCE=.\D3DRenderer.cpp
# End Source File
# Begin Source File

SOURCE=.\D3DWindow.cpp
# End Source File
# Begin Source File

SOURCE=.\DlgAsk4.cpp
# End Source File
# Begin Source File

SOURCE=.\DllEntry.cpp
# End Source File
# Begin Source File

SOURCE=.\MOXExport.cpp
# End Source File
# Begin Source File

SOURCE=.\MOXExport.def
# End Source File
# Begin Source File

SOURCE=.\MOXExport.rc
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\A3DBox.h
# End Source File
# Begin Source File

SOURCE=.\A3DFile.h
# End Source File
# Begin Source File

SOURCE=.\A3DFrame.h
# End Source File
# Begin Source File

SOURCE=.\A3DFuncs.h
# End Source File
# Begin Source File

SOURCE=.\A3DMacros.h
# End Source File
# Begin Source File

SOURCE=.\A3DMaterial.h
# End Source File
# Begin Source File

SOURCE=.\A3DMesh.h
# End Source File
# Begin Source File

SOURCE=.\A3DModel.h
# End Source File
# Begin Source File

SOURCE=.\A3DOBBFuncs.h
# End Source File
# Begin Source File

SOURCE=.\A3DObject.h
# End Source File
# Begin Source File

SOURCE=.\A3DTexture.h
# End Source File
# Begin Source File

SOURCE=.\A3DTypes.h
# End Source File
# Begin Source File

SOURCE=.\A3DVertex.h
# End Source File
# Begin Source File

SOURCE=.\AList.h
# End Source File
# Begin Source File

SOURCE=.\D3DRenderer.h
# End Source File
# Begin Source File

SOURCE=.\D3DWindow.h
# End Source File
# Begin Source File

SOURCE=.\DlgAsk4.h
# End Source File
# Begin Source File

SOURCE=.\MOXExport.h
# End Source File
# Begin Source File

SOURCE=.\resource.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\ConsoleFont.bmp
# End Source File
# Begin Source File

SOURCE=.\icon1.ico
# End Source File
# Begin Source File

SOURCE=.\MOXViewer.ico
# End Source File
# End Group
# End Target
# End Project
