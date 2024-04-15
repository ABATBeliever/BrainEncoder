@echo off
rem BrainEncoder Copyright © 2024 ABATBeliever All Rights Reserved.
rem MIT License   [https://opensource.org/licenses/mit-license.php]
rem @ABATBeliever [https://abatbeliever.net]

set AppName=BrainEncoder
title %AppName%
echo %AppName%
echo.
ffmpeg -i "%1" -c:v libxvid -b:v 200k -r 12 -vf scale=480:270 -c:a aac -b:a 32k -ac 1 %1.avi

rem **************************************************************************
rem "-c:v libxvid" can "-c:v mpeg4 -tag:v DIVX"
rem "-b:v 200k"  Smaller size degrades image quality but is easier to process
rem "-r 12" fps 1~30
rem "-vf scale=480:270" Scale
rem "-c:a aac" Encode
rem "-b:a 32k" kbps
rem "-ac 1" Sound Channel
rem **************************************************************************

echo Finish
echo Press Any Key to Close
pause>>nul