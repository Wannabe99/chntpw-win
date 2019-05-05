set "path=%path%;C:\mingw64\bin"
cd /d "%~dp0"

call _clean.cmd

mkdir bin
mingw32-make -f Makefile-win32 all
move *.exe bin
mingw32-make -f Makefile-win32 clean

mkdir bin64
mingw32-make -f Makefile-win64 all
move *.exe bin64
mingw32-make -f Makefile-win32 clean
