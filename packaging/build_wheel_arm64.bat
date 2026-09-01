:: Copyright (c) Meta Platforms, Inc. and affiliates.
:: All rights reserved.
::
:: This source code is licensed under the BSD-style license found in the
:: LICENSE file in the root directory of this source tree.
@echo on
setlocal

set BUILD_AGAINST_ALL_FFMPEG_FROM_S3=
set BUILD_AGAINST_ALL_FFMPEG_FROM_LOCAL=1
set FFMPEG_ROOT=%CD%\ffmpeg
set LIBAVIF_ROOT=%CD%\libavif
set TORCHCODEC_BUILD_HEIC=0

echo BUILD-WHEEL-STEP-ACTUALLY-RAN
python -m build --wheel -vvv --no-isolation || exit /b 1
