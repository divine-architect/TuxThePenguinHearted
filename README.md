# TuxThePenguinHearted
TTPH is a simple bash script to configure your age of empires 2 de installation to not go out of sync during multiplayer.

<p align="center">
  <img src="[http://some_place.com/image.png](Tux The Lion Hearted!)" />
</p>

## About
A simple script to install required dlls and other dependencies for aoe2 de mp to run smoothly, based on [this](https://www.reddit.com/r/aoe2/comments/dwuplr/how_to_run_age_of_empires_2_definitive_edition_on/) reddit thread

>  How to install it with Steamplay:
Enable Steamplay in your Linux Steam settings (Steam -> Settings -> Steamplay, select Enable Steam play for all titles and then run other titles with Proton. Proton 4.11 seems to work best since some people reported problems on other proton versions.
Download it and then delete or rename the movie folders:
/home/$USER/.steam/steam/steamapps/common/AoE2DE/resources/_common/movies
and
/home/$USER/.steam/steam/steamapps/common/AoE2DE/resources/en/campaign/movies
you might need to delete them again after an update of the game.
If units are missing in the game, make sure that you set PROTON_USE_DXVK=1 in the Steam start options of the game.
If you want to go into multiplayer you will get desynced after a few seconds, to fix that it is necessary to replace the ucrtbase.dll of the wine prefix.
You can do that with the following commands:
`cd /home/$USER/.steam/steam/steamapps/compatdata/813780/pfx/drive_c/windows/system32/`
`wget "https://aka.ms/vs/16/release/vc_redist.x64.exe"`
`cabextract vc_redist.x64.exe`
`cabextract a10 `

Also note that the `.exe` binary from the source is bound to break, so use it from this site --> https://www.microsoft.com/en-us/download/confirmation.aspx?id=48145

Save it in the Downloads directory as the script expects it to be in the Downloads directory


## Important

Enable steamplay under settings and then use proton 7.x as your preferred proton version since this worked for me.
if 7.x doesnt work keep experimenting with other versions, once you're done with that the game should start but you'll only be able to play offline, to be able to play one use the script or use the commands in the script to do it manually.

## Usage

```sh
git clone https://github.com/divine-architect/TuxThePenguinHearted.git

cd TuxThePenguinHearted

sh aoe2de.sh
```
**NOTE: It will prompt you to enter the sudo password to use the cabextract command, if you do not trust the script you can always do this manually or read the script for yourself.**

## Issue
Open issues if any
