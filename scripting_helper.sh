#!/usr/bin/env bash

#A cheat sheet to help remember scripting basics, nuances  and oddities in the CLI. 

#Set Language
language=$1

#Set Concept
concept=$2

#Functions containing simple of explanation of concept from args
bash_if_statement(){
	echo "Usage:"
	echo "if [ Test ]"
	echo "then"
	echo "<commands>"
	echo "fi"
	echo "One liner: if [ Test ]; then <commands>; fi"
	echo "Accepts logical operators for tests - && AND || OR"
	echo "e.g. [ Test ] && [ Test ]"
}

bash_logical(){
	echo "-a filename / True if file exists. May be empty"
	echo "-b filename / True if file exists and is block special file"
	echo "-c filename / True if file exists adn is character special file"
	echo "-d filename / True if file exists and is directory"
	echo "-f filename / True if file exists and is regular file"
	echo "-g filename / True if file exists and is set-groud-id"
	echo "-h filename / True if file exists and is symbolic link"
	echo "-k filename / True if file exists and has sticky bit"
	echo "-p filename / True if file exists and is a named pipe"
	echo "-r filename / True if file exists and is readable"
	echo "-s filename / True if file exists and size greater than zero"
	echo "-u filename / True if file exists and set-user-id bit is set"
	echo "-N filename / True if file exists and has been modified since last read"
	echo "file1 -ef file2 / True if files refer to same device and iNode numbers"
	echo "file1 -nt file2 / True if file1 is newer than file2 or if file1 exists and file2 doesn't"
	echo "file1 -ot file2 / True if file1 is older than file2 or if file2 exists and file1 doesn't"
}

bash_special_chars(){
	echo "Special characters are escaped using \\"
}

python_if_statement(){
	echo "Usage:"
	echo "if Test:"
	echo "\t <commands>"
	echo "elif Another Test:"
	echo "\t <commands>"
	echo "else:"
	echo "\t <commands>"
}

$language\_$concept
