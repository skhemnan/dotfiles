# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin/python3:${PATH}"
export PATH
export BROWSER=/Applications/Google\ Chrome.app


# Welcome Stuff
mv ~/*.mp3 ~/Downloads/Music &> /dev/null



# Aliases
alias python="python3"
alias md="open -a 'Macdown'"
alias mdpdf="markdown-pdf"
alias yt="mpsyt"
alias wt="wunderline --today"
alias wl="wunderline list"
alias wt="wunderline today"
alias wall="wunderline all"
alias imgur="open 'http://gigaahil.imgur.com/'"
alias youtube='newsbeuter -r'
alias pipp="mpv --ontop --no-border --autofit=307x173 --geometry=99%:2% >/dev/null"
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


# Youtube Streams

alias famguy="open 'https://www.youtube.com/watch?v=DV0dT94Qf3w'"
alias mafia3="mpsyt open Mafia3"

# Music - Playlists followed on Youtube, played on mpsyt

alias tvg="mpsyt pl 'https://www.youtube.com/watch?v=9UXdk8D37gI&list=PLa2a9FJY91_3jSbtGMSq50PLSmUmzLH37'"
alias hiphop="mpsyt pl 'https://www.youtube.com/playlist?list=PL9RiXq3CWn9rzkV9GPASvnCfWMpugiFpN'"
alias chill="mpsyt pl 'https://www.youtube.com/watch?v=rpZjRl2YhMY&list=PLDfKAXSi6kUZczwycO8UcABjn-w3WJ_71'"
alias chillhop="mpsyt url 'https://www.youtube.com/watch?v=mx6t6E24SSM'"

# Functions

# Class functions

addpic(){
        mv ~/Desktop/*.png Pictures/$1.png
        cdls Pictures
}

updatebash(){
        cp .bash_profile ~/dotfiles/bash_profile
        cd dotfiles
        git add bash_profile
        git commit -m "Automated update: $1"
        git push -f origin master
        cd ~
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

goo(){
        open "http://www.google.com/search?q=$1";
}

sc(){
        open "http://www.soundcloud.com/search?q= $1";
}


# Exports
export PS1="\[\033[33;1m\]\w\[\033[m\] > "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


##
# Your previous /Users/saahil/.bash_profile file was backed up as /Users/saahil/.bash_profile.macports-saved_2016-07-31_at_17:01:19
##

# MacPorts Installer addition on 2016-07-31_at_17:01:19: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

