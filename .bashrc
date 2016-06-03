## basic stuff ##

	export PS1=" \[\e[1;31m\]> \[\e[m\] \[\e[1;34m\]\W\[\e[m\] "

	export HOMEBREW_CASK_OPTS="--appdir=/Applications"
	export EDITOR=vi
	PATH="/Users/JnNy/Documents/Scripts/:${PATH}"
	export PATH


## basic alias' ##


	alias c="clear"
	alias kwm="/usr/local/cellar/kwm/1.1.2/kwm"
	alias art="nohup /Users/JnNy/Scripts/mpdalbumart.sh"
	alias mpdas="nohup mpdas&"
	alias weechat="weechat --dir ~/.weechat --upgrade"
	alias twitchchat="weechat --dir ~/.twitch"
 	alias bitlbee="/usr/local/Cellar/bitlbee/3.4.1_1/sbin/bitlbee -D"
	alias f='open -a Finder ./'
	alias ytdla="youtube-dl --audio-format best -x"
	alias website="tmuxinator start website"
	alias neo="scripts/neofetch --size none --colors 4 4 4 4 4"	

## github ##

	alias commit="git commit -m 'change'"
	alias push="git push origin gh-pages"


## beets alias' ##


	alias bi="beet import"
	alias be="beet extractart -a -n albumart"
	alias bm="beet embedart -f"


## configuration shortcuts ##


	alias config="tmuxinator start config"

	alias homepage="vi ~/Scripts/homepage/homepage.html"
	alias setup="vi ~/Documents/Scripts/setup"
	alias brc="vi ~/.bashrc"
	alias ncmpcppconf="vi ~/.ncmpcpp/config"
	alias mpdconf="vi ~/.mpd/mpd.conf"
	alias bar="vi ~/Library/Application\ Support/Übersicht/widgets/bar/index.coffee"
	alias tmuxinatorconfigs="vi ~.tmuxinator/config.yml"
	alias beetconfig="vi ~.config/beets/config.yaml"
	alias vimconfig="vi ~/.vimrc"


## functions ##


	function hf() {
		defaults write com.apple.finder AppleShowAllFiles $1; killall Finder
	}

	function lvstrmr() {
		livestreamer twitch.tv/$1 best -p Applications/mpv.app/Contents/MacOS/mpv --player 'mpv --screen=2 --idle=yes --geometry=793x446+971+552'
} 
	

cdf() {
    target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
    if [ "$target" != "" ]; then
        cd "$target"; pwd
    else
        echo 'No Finder window found' >&2
    fi
}

pman()
{
    man -t "${1}" | open -f -a /Applications/Preview.app/
}

process()
{
	ps aux | grep $1
}
