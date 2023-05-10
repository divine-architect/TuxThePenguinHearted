#!/bin/bash

echo "TuxThePenguinHearted - An Aoe2:de installer for Linux"
echo "beginning downloads"

cd $HOME/Downloads
echo "in downloads"

echo "copying the exe to system32 in steamapps"
if [ -e vc_redist.x64.exe ]
then
    echo "ok"
    cp vc_redist.x64.exe ~/.steam/debian-installation/steamapps/compatdata/813780/pfx/drive_c/windows/system32

    cd ~/.steam/debian-installation/steamapps/compatdata/813780/pfx/drive_c/windows/system32
    echo "sudo password to enable cabeextract to extract the required .dll files from the exe"
    sudo cabextract vc_redist.x64.exe
    sudo cabextract a10

    echo "All done, please refer to the github as to what to do next"
else
    echo "not ok"
    echo "please download the exe from this site --> https://www.microsoft.com/en-us/download/confirmation.aspx?id=48145 and try again"
fi