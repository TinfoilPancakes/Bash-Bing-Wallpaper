# Bash-Bing-Wallpaper
Modification of bing-wallpaper-sh to work as a cron job.

## Information

Original for Mac OSX can be found [here.](https://github.com/thejandroman/bing-wallpaper)

I've updated this for use with crontab and included my own wallpaper cycle script for gnome-shell vs 3.18.
(Not sure about later versions but try it out and let me know if anything breaks.)

## Installation

Just point your crontab to the appropriate files.

*man crontab*  
*crontab -e*  
*crontab -l*

### Args for wallpaper downloads:
1. Users home directory.
2. Save path.

### Args for wallpaper cycle
1. Username (required to get appropriate gnome-session)
2. Directory to cycle through.

### Enjoy.
