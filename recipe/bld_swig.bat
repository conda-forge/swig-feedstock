cmake -G "NMake Makefiles" ^
  -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
  -DCMAKE_INSTALL_PREFIX:PATH=%LIBRARY_PREFIX% ^
  -DBISON_EXECUTABLE=%BUILD_PREFIX%\Library\bin\win_bison.exe ^
  . || goto :eof

cmake --build . --config Release --target install || goto :eof
