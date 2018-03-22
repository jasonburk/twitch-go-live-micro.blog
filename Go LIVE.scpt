use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

on run
    set gameName to the text returned of (display dialog "What game are you playing?" default answer "")
    do shell script "curl https://micro.blog/micropub -d h=entry -d 'content=Streaming " & gameName & " Live on [Twitch](https://twitch.tv/YOURNAME)!' -H 'Authorization: Bearer XXXXXXXXXXXXXXXXXXXX'"
end run
