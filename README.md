Setup 
=========================================
Install Visual Studio 2005 sp1
Install Visual Studio 2008 sp1 (for SDK 6.0A)

From External Libs folder 
	- Install dxsdk_sum2004.exe
	- Unzip IFC.zip
	
In Visual Studio 
	- Open Tools|Options select Projects and Solutions
		- Add SDK 6.0A, Directx and IFC include folders to Include Files
		- Add SDK 6.0A, Directx and IFC lib folder to Library Files
	
Make sure to compile on a computer with the locale set to Chinese.
	- Control Panel|Region|Administrative|Language for non-unicode programs
	

Compile projects in the following order:
=========================================	
\Angelica2\Angelica2.sln
	- Debug	
	- Unicode Debug
	- Release
	- Unicode Release
	
\Common\Common.sln
	- StdNewDebug 	- build luawrapper
	- StdNewRelease - build luawrapper
	- Debug - build Gfxcommon_NoAudio
	- Release - build Gfxcommon_NoAudio
	- Editor Unicode Debug - build Gfxcommon_NoAudio
	- Editor Unicode Release - build Gfxcommon_NoAudio
	- EditorDebug - build solution
	- EditorRelease - build solution
	- UnicodeDebug - build solution
	- UnicodeRelease - build solution
	
\Element\pw.sln
	- Debug
	- Release
	
All binaries are copied to \bin folder for debugging.  Add rest of the client files to bin folder. For example, pck, maps, data files.
Gshop files are in data folder.

Open ElementClient project settings and set working folder to the bin folder location.  Debug in Visual Studio or run exe outside.



