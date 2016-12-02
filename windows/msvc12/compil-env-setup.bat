@ECHO off

::------------------------------------------------------------------------
:: ======== TANGO BINDING PATHS ======== 
::------------------------------------------------------------------------
::- git clone directory
set BINDING_PATH=C:\mystuffs\dev\bindings\matlab-binding@github
::- runtime directory
set RUNTIME_PATH_X86=%BINDING_PATH%\runtime\windows
set RUNTIME_PATH_X64=%BINDING_PATH%\runtime\windows
::- .h
set RUNTIME_INC_X86=%RUNTIME_PATH_X86%\include
set RUNTIME_INC_X64=%RUNTIME_PATH_X64%\include
::- .lib
set RUNTIME_LIB_X86=%RUNTIME_PATH_X86%\lib\x86\tango-9.2.2-vc10
set RUNTIME_LIB_X64=%RUNTIME_PATH_X64%\lib\x64\tango-9.2.2-vc12
::- .dll
set RUNTIME_BIN_X86=%RUNTIME_PATH_X86%\lib\x86\tango-9.2.2-vc10
set RUNTIME_BIN_X64=%RUNTIME_PATH_X64%\lib\x64\tango-9.2.2-vc12
::- path
set PATH=%RUNTIME_BIN_X86%;%PATH%
set PATH=%RUNTIME_BIN_X64%;%PATH%
set PATH=%BINDING_PATH%\mex-file;%PATH%

::------------------------------------------------------------------------
:: ======== MATLAB OR OCTAVE X64 PATHS 
::------------------------------------------------------------------------
set ML_ROOT64=C:\Program Files\MATLAB\R2016b\extern
set ML_INC64=%ML_ROOT64%\include
set ML_LIB64=%ML_ROOT64%\lib\win64\microsoft
set ML_RC64=%ML_ROOT64%\include
SET ML_LIB64_LIST=libmex.lib;libmx.lib

::------------------------------------------------------------------------
:: ======== MATLAB OR OCTAVE X86 PATHS
::------------------------------------------------------------------------
set ML_ROOT32=C:\Program Files (x86)\MATLAB\R2016b\extern
set ML_INC32=%ML_ROOT32%\include
set ML_LIB32=%ML_ROOT32%\lib\win32\microsoft
set ML_RC32=%ML_ROOT32%\include
SET ML_LIB32_LIST=libmex.lib;libmx.lib

::------------------------------------------------------------------------
:: ======== YAT32 ======== 
::------------------------------------------------------------------------
set YAT_ROOT32=%RUNTIME_PATH_X86%
set YAT_INC32=%RUNTIME_INC_X86%
set YAT_LIB32=%RUNTIME_LIB_X86%
set YAT_BIN32=%RUNTIME_BIN_X86%
set YAT_LIB32_LIST=yat.lib
set YAT_DBG_LIB32_LIST=yatd.lib
SET PATH=%YAT_BIN32%;%PATH%

::------------------------------------------------------------------------
:: ======== YAT64 ======== 
::------------------------------------------------------------------------
set YAT_ROOT64=%RUNTIME_PATH_X64%
set YAT_INC64=%RUNTIME_INC_X64%
set YAT_LIB64=%RUNTIME_LIB_X64%
set YAT_BIN64=%RUNTIME_BIN_X64%
set YAT_LIB64_LIST=yat.lib
set YAT_DBG_LIB64_LIST=yatd.lib
SET PATH=%YAT_BIN64%;%PATH%

::------------------------------------------------------------------------
:: ======== YAT4TANGO32 ======== 
::------------------------------------------------------------------------
set YAT4TANGO_ROOT32=%RUNTIME_PATH_X86%
set YAT4TANGO_INC32=%RUNTIME_INC_X86%
set YAT4TANGO_LIB32=%RUNTIME_LIB_X86%
set YAT4TANGO_BIN32=%RUNTIME_BIN_X86%
set YAT4TANGO_LIB32_LIST=yat4tango.lib
set YAT4TANGO_DBG_LIB32_LIST=yat4tangod.lib
SET PATH=%YAT4TANGO_BIN32%;%PATH%

::------------------------------------------------------------------------
:: ======== YAT4TANGO64 ======== 
::------------------------------------------------------------------------
set YAT4TANGO_ROOT64=%RUNTIME_PATH_X64%
set YAT4TANGO_INC64=%RUNTIME_INC_X64%
set YAT4TANGO_LIB64=%RUNTIME_LIB_X64%
set YAT4TANGO_BIN64=%RUNTIME_BIN_X64%
set YAT4TANGO_LIB64_LIST=yat4tango.lib
set YAT4TANGO_DBG_LIB64_LIST=yat4tangod.lib
SET PATH=%YAT4TANGO_BIN64%;%PATH%

::------------------------------------------------------------------------
:: ======== LOG4TANGO ======== 
::------------------------------------------------------------------------
SET LOG4TANGO_ROOT32=%RUNTIME_PATH_X86%
SET LOG4TANGO_INC32=%RUNTIME_INC_X86%
SET LOG4TANGO_LIB32=%RUNTIME_LIB_X86%
SET LOG4TANGO_BIN32=%RUNTIME_BIN_X86%
SET LOG4TANGO_LIB32_LIST=log4tango.lib
SET PATH=%LOG4TANGO_BIN32%;%PATH%

SET LOG4TANGO_ROOT64=%RUNTIME_PATH_X64%
SET LOG4TANGO_INC64=%RUNTIME_INC_X64%
SET LOG4TANGO_LIB64=%RUNTIME_LIB_X64%
SET LOG4TANGO_BIN64=%RUNTIME_BIN_X64%
SET LOG4TANGO_LIB64_LIST=log4tango.lib
SET PATH=%LOG4TANGO_BIN64%;%PATH%

::------------------------------------------------------------------------
:: ======== ZMQ ======== 
::------------------------------------------------------------------------
SET ZMQ_ROOT32=%RUNTIME_PATH_X86%
SET ZMQ_INC32=%RUNTIME_INC_X86%
SET ZMQ_LIB32=%RUNTIME_LIB_X86%
SET ZMQ_BIN32=%RUNTIME_BIN_X86%
SET ZMQ_LIB32_LIST=zmq.lib
SET PATH=%ZMQ_BIN32%;%PATH%

SET ZMQ_ROOT64=%RUNTIME_PATH_X64%
SET ZMQ_INC64=%RUNTIME_INC_X64%
SET ZMQ_LIB64=%RUNTIME_LIB_X64%
SET ZMQ_BIN64=%RUNTIME_BIN_X64%
SET ZMQ_LIB64_LIST=zmq.lib
SET PATH=%ZMQ_BIN64%;%PATH%

::------------------------------------------------------------------------
:: ======== OMNIORB ======== 
::------------------------------------------------------------------------
SET OMNIORB_ROOT32=%RUNTIME_PATH_X86%
SET OMNIORB_INC32=%RUNTIME_INC_X86%
SET OMNIORB_LIB32=%RUNTIME_LIB_X86%
SET OMNIORB_BIN32=%RUNTIME_BIN_X86%
SET OMNIORB_LIB32_LIST=omnithread40_rt.lib;omniORB421_rt.lib;COS421_rt.lib;omniDynamic421_rt.lib
SET PATH=%OMNIORB_BIN32%;%PATH%

SET OMNIORB_ROOT64=%RUNTIME_PATH_X64%
SET OMNIORB_INC64=%RUNTIME_INC_X64%
SET OMNIORB_LIB64=%RUNTIME_LIB_X64%
SET OMNIORB_BIN64=%RUNTIME_BIN_X64%
SET OMNIORB_LIB64_LIST=omnithread40_rt.lib;omniORB421_rt.lib;COS421_rt.lib;omniDynamic421_rt.lib
SET PATH=%OMNIORB_BIN64%;%PATH%

::------------------------------------------------------------------------
:: ======== TANGO ======== 
::------------------------------------------------------------------------
SET TANGO_ROOT32=%RUNTIME_PATH_X86%
SET TANGO_INC32=%RUNTIME_INC_X86%\tango
SET TANGO_LIB32=%RUNTIME_LIB_X86%
SET TANGO_BIN32=%RUNTIME_BIN_X86%
SET TANGO_LIB32_LIST=tango.lib
SET PATH=%TANGO_BIN32%;%PATH%

SET TANGO_ROOT64=%RUNTIME_PATH_X64%
SET TANGO_INC64=%RUNTIME_INC_X64%\tango
SET TANGO_LIB64=%RUNTIME_LIB_X64%
SET TANGO_BIN64=%RUNTIME_BIN_X64%
SET TANGO_LIB64_LIST=tango.lib
SET PATH=%TANGO_BIN64%;%PATH%

