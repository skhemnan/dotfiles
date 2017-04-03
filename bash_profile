# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin/python3:${PATH}"
export PATH


# Welcome Stuff
mv ~/*.mp3 ~/Downloads/Music &> /dev/null


# Aliases
alias md="open -a 'Macdown'"
alias yt="mpsyt"
alias wa="wunderline add"
alias wd="wunderline done"
alias wl="wunderline list"
alias wt="wunderline today"
alias wall="wunderline all"
alias imgur="open 'http://gigaahil.imgur.com/'"
alias youtube='newsbeuter -r'
alias pipp="mpv --ontop --no-border --autofit=307x173 --geometry=99%:2%"
alias g="googler"
alias fnd="open -a 'Finder'"
alias safari="open -a 'Safari'"
alias chrome="open -a 'Chrome'"
alias ytdl="youtube-dl -f 22"
alias prv="open -a 'Preview'"
alias yt2mp3="youtube-dl -x --audio-format mp3"
alias mvmusic="mv *.mp3 ~/Downloads/Music"
alias dot="open 'https://github.com/skhemnan/dotfiles'"
alias scdl="scdl -l"
alias rmdi="rm -rf"
alias rmdionly="rm -rf '$1'/*"
alias cleanmusic="rm -rfv ~/Downloads/Music/* &> /dev/null"
alias catadd="cat >"
alias ~="cd ~"
alias ls='ls -a'
alias ..="cd .."

# Classes

alias college="open ~/'Google Drive'/'College Notes'/'92 - Winter 2017'/"

# TV Shows & Youtube Games

alias mafia3="mpsyt open Mafia3"
alias bbt="open 'https://solarmoviez.to/movie/the-big-bang-theory-season-10-16447/490365-8/watching.html'"
alias himym="open 'https://solarmoviez.to/search/How+I+met+your+mother.html'"
alias pnr="open 'https://solarmoviez.to/search/Parks+and+recreation.html'"
alias manseegi="open 'http://123movies.net/movie/search/Man+Seeking+Woman'"
alias friends="open 'https://123movies.net/movie/search/friends+season'"
alias dd="open 'https://solarmoviez.to/search/Daredevil.html'"
alias lc="open 'https://solarmoviez.to/search/luke+cage.html'"
alias jj="open 'https://solarmoviez.to/search/Jessica+Jones.html'"
alias mr="movie 'mr+robot'"

# Music - Playlists followed on Youtube, played on mpsyt
alias tvg="mpsyt pl 'https://www.youtube.com/watch?v=9UXdk8D37gI&list=PLa2a9FJY91_3jSbtGMSq50PLSmUmzLH37'"
alias hiphop="mpsyt pl 'https://www.youtube.com/playlist?list=PL9RiXq3CWn9rzkV9GPASvnCfWMpugiFpN'"
alias chill="mpsyt pl 'https://www.youtube.com/watch?v=rpZjRl2YhMY&list=PLDfKAXSi6kUZczwycO8UcABjn-w3WJ_71'"
alias chillhop="mpsyt url 'https://www.youtube.com/watch?v=mx6t6E24SSM'"

# Functions

updatebash(){
        cp .bash_profile ~/dotfiles/bash_profile
        cd dotfiles
        git add bash_profile
        git commit -m "Automated update, added aliases/functions"
        git push -f origin master
}
cdls(){
        cd "$1" && ls -a;
}
notes(){
        cd ~/Dropbox/Notes && ls -1;
}
note(){
        cd ~/Dropbox/Notes && vim "$1.md"
}
lnote(){
        cd ~/Documents && vim "$1.md"
}

projects(){
        cd ~/.personal_projects && ls -1;
}
gotoproject(){
        cd ~/.personal_projects && cd "$1";
}
mkcd(){
        mkdir -p "$1" && cd "$1";
}

dl(){
        yt2mp3 "http://www.youtube.com/watch?v=$1" && mvmusic
}
cscdl(){
        wget "https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/$1.itermcolors"
}
ghdl(){
        wget "https://raw.githubusercontent.com/$1"
}
wal(){
        wunderline add "$1" --list "$2"
}
mp3extract(){
        ffmpeg -i "$1" -acodec libmp3lame "$2".mp3
}

# Search Functions

sc(){
        open "http://www.soundcloud.com/search?q= $1";
}
movie(){
        open "http://solarmoviez.to/search/$1.html";
}

hindimovie(){
        open "https://www.hindilinks4u.to/?s=$1";
}

# Exports
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


##
# Your previous /Users/saahil/.bash_profile file was backed up as /Users/saahil/.bash_profile.macports-saved_2016-07-31_at_17:01:19
##

# MacPorts Installer addition on 2016-07-31_at_17:01:19: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

