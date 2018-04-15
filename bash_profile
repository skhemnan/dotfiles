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

# Bitvore

alias salesnav="open 'https://www.linkedin.com/sales?trk=d_flagship3_nav'"
alias 100muni="open 'https://docs.google.com/spreadsheets/d/1rBQJN1EjO_dsIB7E_9YxKl2GkO-l7CMoTR3CKSU34GY/edit#gid=148650555'"
alias norbert="open 'https://app.voilanorbert.com/#!/prospecting/manual'"
alias zoho="open 'https://crm.zoho.com/crm/ShowTab.do?module=Leads'"
alias mailtest="open 'http://www.mailtester.com'"
alias prospect="open 'https://docs.google.com/spreadsheets/d/1zOPLx6Qr_rOs3e8CEPOLXv9ySbmxv5bJSx_BfZvaQBI/edit#gid=1325574501'"


# TV Shows & Youtube Games

alias famguy="open 'https://www.youtube.com/watch?v=DV0dT94Qf3w'"
alias mafia3="mpsyt open Mafia3"
alias bbt="open 'https://solarmoviez.to/movie/the-big-bang-theory-season-10-16447/490365-8/watching.html'"
alias himym="open 'https://solarmoviez.to/search/How+I+met+your+mother.html'"
alias pnr="open 'https://solarmoviez.to/search/Parks+and+recreation.html'"
alias manseegi="open 'http://123movies.net/movie/search/Man+Seeking+Woman'"
alias friends="open 'https://solarmoviez.to/movie/friends-season-6-2633/484835-8/watching.html'"
alias dd="open 'https://solarmoviez.to/search/Daredevil.html'"
alias lc="open 'https://solarmoviez.to/search/luke+cage.html'"
alias jj="open 'https://solarmoviez.to/search/Jessica+Jones.html'"
alias mr="movie 'mr+robot'"
alias mon="open 'https://solarmoviez.to/movie/master-of-none-season-1-6313/74812-8/watching.html'"

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
movie(){
        open "https://gomovies.sc/search-query/$1/";
}

hindimovie(){
        open "https://www.hindilinks4u.to/?s=$1";
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

