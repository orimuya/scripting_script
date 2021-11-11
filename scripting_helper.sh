#!/usr/bin/env bash

#A cheat sheet to help remember scripting basics, nuances  and oddities in the CLI. 

#Set Language
language=$1

#Set Concept
concept=$2

#Functions containing simple of explanation of concept from args
bash_if_statement(){
	echo "Usage:"
	echo "if [ Condition ]"
	echo "then"
	echo "<commands>"
	echo "fi"
	echo "One liner: if [ Condition ]; then <commands>; fi"
	echo "Accepts boolean operations for Conditions - && AND || OR"
	echo "e.g. [ Condition ] && [ Test ]"
}

bash_while_loop(){
	echo "Usage:"
	echo "while [ Condition ]"
	echo "do"
	echo "<commands>"
	echo "done"
	echo "One Liner: while [ Condition ]; do <commands>; done"
	echo "Use : to allow for  an infinite loop"
	echo "continue returns to start of loop. break exits the loop"
}

bash_for_loop(){
	echo "Usage:"
	echo "for variable in list; do"
	echo "<commands>"
	echo "done"
	echo "One Liner: for variable in list; do <commands>; done"
	echo "Methods of Listing:"
	echo "1 2 3 4 5"
	echo "{Start..End[..Interval]}"
	echo "\`seq Start End\`"
	echo "Counter Usage:"
	echo "for (( expr1 ; expr2 ; expr3 )) ; do"
	echo "<commands>"
	echo "done"
	echo "One Liner: for ((Expr 1 ; Expr 2 ; Expr 3)); do <commands>; done"
	echo "Classic Example: for ((x=0 ; x<5 ; x++)); do echo "\$x"; done"

}

bash_debugging(){
	echo "Add set -x at start of script"
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

bash_variables(){
	echo "Test if variable is set [ -z \$variable ]"
	echo "Variable variable can be called \${!var} when var is set to another variable name"
	echo "Variable can further worked with brackets"
	echo "Default Value: \${parameter:=defaultValue}"
	echo "Error Message: \${parameter:?\"Error Message\""
	echo "Remove: \${var#[#]pattern} - Remove from short(#) or longest(##) pattern"
	echo "Find/Replace: \${var/pattern/string}"
}

bash_special_parameters(){
	echo "\$* Expands to the postional parameters. When quoted expands to a single word seperated by the first character of the IFS variable"
	echo "\$@ Expands to the postional parameters. When quoted expands to seperate words."
	echo "\$\# Expands to the number of postional parameters as a decimal."
	echo "\$? Expands to the exit code of the most recented executed foreground pipe"
	echo "\$- Exapnds to the current options flags specifed upon invovation, by set or set by the shell"
	echo "\$\$ Expands to the PID of the shell. In subshell, shows the invoking shell rather than the subshell."
	echo "\$! Expands to the PID of the most recent background job"
	echo "\$0 expands to the name of the script"
}

python_if_statement(){
	echo "Usage:"
	echo "if Condition:"
	echo "\t <commands>"
	echo "elif Another Condition:"
	echo "\t <commands>"
	echo "else:"
	echo "\t <commands>"
}

python_while_loop(){
	echo "Usage:"
	echo "while Condition:"
	echo "\t <commands>"
}

python_for_loop(){
	echo "Usage:"
	echo "for variable in list:"
	echo "\t <commands>"
}

if [ -z "$language" ] || [ -z "$concept" ]
then
#Menu System to allow for easier interaction
while :
do
	clear
	echo "Hello Dave, what language are you using?"
	echo "1. Bash"
	echo "2. Python"
	echo "3. Exit"
	echo -n "Please make a selection [1 -3]"
	read opt
	case $opt in 
		1) echo "Good Choice";
		   exit 1;;
		2) echo "Better Choice";
		   exit 1;;
		3) echo "Goodbye Dave";
		   exit 1;;
		*) echo "I can't let you do that Dave";
		   echo "Please [enter] to continue. . .";
		   read enterKey;;
	esac
done
else
$language\_$concept
fi
