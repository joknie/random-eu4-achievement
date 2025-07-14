#!/bin/bash
# A quick and dirty script offering the user a random unobtained EU4 achievement to play for

# get eu4 achievement stats from steam web api once at the start
curl -X GET https://api.steampowered.com/ISteamUserStats/GetPlayerAchievements/v0001/\?appid\=236850\&key\=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX\&steamid\=XXXXXXXXXXXXXXXXXXX > eu4_steam_achievements.json

# checking for 0 to get the ones i haven't done already
jq '.playerstats.achievements[] | select(.achieved == 0) | .apiname' eu4_steam_achievements.json > missing_eu4_achievements.txt

# prettifying the output
sed -i -e 's/"//g' -e 's/^achievement_//g' -e 's/_/ /g' missing_eu4_achievements.txt

# get a random cheevo from the list
shuf -n1 missing_eu4_achievements.txt

# cleanup other files
rm -f eu4_steam_achievements.json missing_eu4_achievements.txt
