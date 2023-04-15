@echo off

set exe_name=app
set build_options= -DBUILD_WIN32=1
set link_flags= user32.lib -opt:ref -incremental:no

if not exist build mkdir build
pushd build
cl %build_options% ../source/main.cpp /link %link_flags% /out:%exe_name%.exe
popd