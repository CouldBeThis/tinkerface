#!/bin/bash
clear

### ~~~~declarations
### Date stamps
	DateTimeStamp=$(date +"%y%m%d-%H%M%S")
	DateStamp=$(date +"%y%m%d")
	DatePlain=$(date)
###	Metadata 
	ScriptDir=$PWD
	ThisScript=$(basename "$0")
	CurrentUser=$(whoami)
###	Reminder
	# SomeVariable="value"
	# shellcheck disable=SC2034  # "appears unused. Verify it or export it."

###	Text s
	## Bold
	Bold=$(tput smso)
	BoldOff=$(tput rmso)
	## Reverse
	Rev=$(tput rev)
	## reset all attributes
	AllOff=$(tput sgr0)
	## Set some colors
	FGBlue=$(tput setaf 4)		# text			= blue
	FGBrWhite=$(tput setaf 15)	# text 			= bright white
	BGWhite=$(tput setab 7)	# background	= white
	BGBlue=$(tput setab 4)		# background	= blue

tabs -10
# echo " "
# echo "$Rev ⎡BRIGHT fg⎤ $AllOff ┠───────────────────────────────╖"
# echo "┃ $FGBlue$Spacer$U\$FGBlue$UOff	is ANSI #4	▶︎ $AllOff ▶︎ ╢"
# echo "┃ $FGBrBlack$Spacer$U\$FGBrBlack$UOff	is ANSI #15	▶︎ $AllOff ▶︎  ║"
# echo "┃ $BGWhite$Spacer$U\$BGWhite$UOff	is ANSI #7	▶︎ $AllOff ▶︎"
# echo "┃ $BGBlue$Spacer$U\$BGBlue$UOff	is ANSI #4	▶︎ $AllOff ▶︎"
# echo "$Rev ⎡BRIGHT fg⎤ $AllOff ┣══════════════════════════════╝"

cd $ScriptDir
echo "$FGBlue ScriptDir is $AllOff" $ScriptDir

cd $ScriptDir
cd ..
HugoDir=$PWD
echo "$FGBlue HugoDir is $AllOff" $HugoDir
HugoContentDir=$HugoDir/content
echo "$FGBlue HugoContentDir is $AllOff" $HugoContentDir


cd $ScriptDir
cd ../../localrepos
ReposDir=$PWD
echo "$FGBlue ReposDir is $AllOff" $ReposDir

echo "-----------------"
echo "$FGBlue List of readmes: $AllOff"
fd \
    --ignore-case \
    --follow \
    --min-depth 1 \
    --max-depth 1 \
    readme.md */ \
    # --print0

echo "============="
echo "$FGBlue List of readmes: $AllOff"
echo "$FGBlue use xargs to print directory names only: $AllOff"
fd \
	--ignore-case \
	--follow \
	--min-depth 1 \
	--max-depth 1 \
	readme.md */ \
	--print0 |
		xargs \
		-I @ \
		-0 \
		dirname "@"

## TODO: Use `hugo new` to create posts that do NOT already exist.















