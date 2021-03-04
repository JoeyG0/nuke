#!/bin/bash

# nuke is an unsafe delete operation
# for people who want to watch their files burn

version="1.0"
current=${PWD##*/}

function print_rand_msg
{
	msg[0]="nuke is a command for people who find \`rm -f\` too safe."
	msg[1]="nuke is a command for people who drive above the speed limit."
	msg[2]="nuke is like a hand-grenade secured behind a child lock (if the child lock was knowing how to spell \"nuke\")."
	msg[3]="nuke is a command for people who aren't stressed-out enough."
	msg[4]="nuke is a command for people who need an adrenaline rush."
	msg[5]="nuke is a command for people who do their own stunts."
	msg[6]="nuke is a command for fire jugglers and sword swallowers."
	msg[7]="nuke is the \`rm\` command on x-games mode."
	msg[8]="sometimes you need a scalpel, sometimes you need a hammer. nuke is for the latter."
	msg[9]="nuke is a four-letter word."
	msg[10]="nuke should be feared."
	msg[11]="nuke is the first command rated NC-17."
	msg[12]="nuke is a command to end all commands."
	msg[13]="nuke is bad for your blood pressure."
	msg[14]="nuke sucks."
	msg[15]="nuke is a performance art piece."
	msg[16]="nuke is a command for trained stunt professionals. viewer discretion is advised."
	msg[17]="nuke is not for the faint-of-heart."
	msg[18]="nuke is a command for hot people."
	msg[19]="nuke dukem."

	
	size=${#msg[@]}
	index=$(($RANDOM % $size))

	echo
	tput setaf 7
	echo ${msg[$index]}
	tput sgr 0
	echo

}

function show_help
{
	print_rand_msg
	echo "nuke <filename>                               deletes the file provided"
	echo "nuke <filename> <filename> ... <filename>     deletes all files provided"
	echo "nuke <directory>                              deletes directory and its content"
	echo "nuke .                                        deletes the current directory"
	echo "sudo nuke *                                   try it, it's fun!"
	echo "nuke --update                                 update to newest version"
	echo
	echo "nuke will delete anything and everything you throw at it. multiple files,"
	echo "directories, even the directory you're in right now —— from the directory"
	echo "you're in! no confirmation required."
	echo
}

function update
{
	branchName=$(get_branch)
	sync=$(go_fetch)
	clear
	draw_top_box
	echo "Updating..."
	curl -H 'Cache-Control: no-cache' "https://raw.githubusercontent.com/qjack001/nuke/main/nuke.sh?$(date +%s)" -o new-nuke.sh
	mv -f 'new-nuke.sh' '/usr/local/bin/nuke'
	chmod +x '/usr/local/bin/nuke'
	echo "Updated!"
	echo
	print_version
}

function install
{
	cp -f 'nuke.sh' '/usr/local/bin/nuke'
	chmod +x '/usr/local/bin/nuke'
}

function print_version
{
	echo "nuke v$version"
}

function nuke_it
{
	if [[ "$1" == "." ]]; then
		nuke_me
	else
		explode $1
		rm -rf "$1"
	fi
}

function nuke_me
{
	explode $current
	cd ..
	rm -rf "$current"
}

function next_frame
{
	sleep 0.1
	printf "\033[6A"
}

function explode
{
	size=${#1}
	spaces=$((9-(size/2)))
	s=$(printf "%-${spaces}s" " ")
	echo "${s// / }${1}"
	sleep 1

	next_frame
	echo
	echo
	echo "            )         "
	echo "       %⌐[,▄░          "
	echo "      ░▒▓▀▓▓▌    "
	echo "           '       "
	next_frame
	echo "      "
	echo "   \`       ⌐       "
	echo " .   -  ╕  ,┘       "
	echo "  ╓╦▄╔▒▄║▄▄▓▄φ░,   "
	echo " ╔║▒╣▓▓▒▀▀▀▓▓▒▒░      "
	echo "  '''''''''''''    "
	next_frame
	echo "        ,               "
	echo "    ╚╠ .░░⌐ ╓╦φ       "
	echo ",░░░⌐╚░╦║░╦║░░╩░         "
	echo " ╚░╠░║φ▒╣▓▓▌╬╠╠╠░⌐    "
	echo "╠╠░╠▒▓▓▀▀╚╚▀▓▒╬╠░░   "
	echo "     ''            "
	next_frame
	echo "      , ,      ,       "
	echo "   φε⌐',╓,ƒ┘ ╔░╠ε         "
	echo ":╦⌐,,║╠ε░╠╬░φ╦╔,      "
	echo "╠\`╔║╦╣╠╬φ╣▒║▒╣╬░ⁿφ⌐"
	echo "  φ╓╣╣╬╣▓╩╠╬╢▓▒▒╠ε░"
	echo "  \"▀╙╙░╙░\` '░ⁿ╙▀░\` "
	next_frame
	echo "                   "
	echo "   ,╦,φ░░╠░░,,,             "
	echo " ╦╠▒▒φ░║▒▒▒░║▒▒░╓  "
	echo "╓║▒▒▒▀ε░'^║░╚▒╬▒╦░ "
	echo "\"╚▀▀ε\"^     ░░╙╚▀░ "
	echo ".╓,,           ╓╓  "
	next_frame
	echo "      ,╓φ╔╓        "
	echo "  ╔φ╠╦▒▒╬▒φ░║▒▒╬░  "
	echo "«╣▒║╬░╚╩░╚╙░░╣▒▒▌░ "
	echo "▐▒╬░\"        ░╚░╚░ "
	echo "^░░⌐          .\`'  "
	echo "@φ,             φ▒"
	next_frame
	echo "       ,-░,         "
	echo "  ░░░ⁿ ≈─%⌐░  .╓░░─ "
	echo ",░,\"└          '.░' "
	echo "\`\`\`               - "
	echo "\"─⌐              ╔ε "
	echo "                    "
	next_frame
	echo "      \"\"\`\"-   ~.   "
	echo " ⌐',           \"   "
	echo "                   "
	echo " ⌐              \"─ "
	echo "                   "
	echo "                   "
	next_frame
	echo "       .╓╔ç    ,    "
	echo "  ,» \`    .    .░╚ε "
	echo " «░                 "
	echo "                   "
	echo "                   "
	echo "                   "
	next_frame
	echo "                   "
	echo "                   "
	echo "                   "
	echo "                   "
	echo "                   "
}

# handle arguments

if [ "$#" -lt "1" ]; then
	show_help
elif [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
	show_help
elif [ "$1" = "--install" ] || [ "$1" = "-i" ]; then
	install
elif [ "$1" = "--version" ] || [ "$1" = "-v" ]; then
	print_version
elif [ "$1" = "--update" ] || [ "$1" = "-u" ]; then
	update
else
	for var in "$@"
	do
		nuke_it "$var"
	done
	echo
	echo
fi
