:: Copyright (c) Meta Platforms, Inc. and affiliates.
:: All rights reserved.
::
:: This source code is licensed under the BSD-style license found in the
:: LICENSE file in the root directory of this source tree.
@echo on
setlocal

set I_CONFIRM_THIS_IS_NOT_A_LICENSE_VIOLATION=1
set BUILD_AGAINST_ALL_FFMPEG_FROM_S3=
set FFMPEG_ROOT=%CD%\ffmpeg
set LIBAVIF_ROOT=%CD%\libavif
set TORCHCODEC_BUILD_IMAGE=0
set TORCHCODEC_BUILD_HEIC=0
set PKG_CONFIG_PATH=%FFMPEG_ROOT%\lib\pkgconfig
set CMAKE_PREFIX_PATH=%LIBAVIF_ROOT%
set PATH=C:\tools\msys64\usr\bin;C:\tools\msys64\clangarm64\bin;%PATH%

echo BUILD-WHEEL-STEP-ACTUALLY-RAN
where pkg-config.exe || exit /b 1
python -m build --wheel -vvv --no-isolation || exit /b 1
