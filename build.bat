%ECHO OFF

REM the input folders for the C++ sources
SET INPUT="-I.\jni"

rm -rf src\main\java\nl\igorski\lib\audio\mwengine
mkdir src\main\java\nl\igorski\lib\audio\mwengine

swig -java -package nl.igorski.lib.audio.mwengine -DNO_RTIO -c++ -lcarrays.i -verbose -outdir src\main\java\nl\igorski\lib\audio\mwengine %INPUT% -o jni\jni\java_interface_wrap.cpp jni\mwengine.i

ndk-build V=1
