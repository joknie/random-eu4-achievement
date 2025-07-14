# random-eu4-achievement
A quick and dirty Linux shell script offering the user a random unobtained EU4 achievement to play for

## Dependencies

curl, jq, sed

## Usage

On the line with the curl command, replace the XXXXX in the URL with your generated Steam Web API Key and the target account's SteamID. (Note: Steam account needs to be public) 

The App ID could also be changed to use this little script for other games.

Make the script executable and run it, but you probably knew that part anyway.

## Possible Extensions (if I ever bother to come back to this)

* Add command line parameters to override App ID and Steam ID
* Add command line parameters for any number of outputs or to just show the full list

## References
* Steam Web API documentation of the endpoint used: https://developer.valvesoftware.com/wiki/Steam_Web_API#GetPlayerAchievements_(v0001)
* How to obtain a Steam Web API Key: https://steamcommunity.com/dev

## License  

Released under The Unlicense
