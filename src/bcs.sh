#!/bin/bash
#
# A quick refrence to basic bash scripting constructs.
#

help(){
  printf "Usage: bcs --option_name\n\n"
  printf "Using the command with any option from the options list, will display the basic code syntax for the construct.\n\n"
  printf "run \"bcs --options\" to get the list of possible options.\n\n"
}

options(){
  echo "--run        -  Running a script."
  echo "--math       -  Doing simple math."
  echo "--variable   -  Defining variables."
  echo "--list       -  Defining a list."
  echo "--increment  -  Incrementing a counter variable."
  echo "--if         -  If statement."
  echo "--if_short   -  Short hand if statement."
  echo "--if_logical -  Logical Operators of the if statement."
  echo "--if_compare -  Comparison operators of the if statement."
  echo "--if_test    -  Test operators to be used in if conditions."
  echo "--case       -  Case statement."
  echo "--for        -  For loop."
  echo "--for_each   -  For each loop."
  echo "--while      -  While loop."
  echo "--until      -  Until loop."
}

myRun(){
  echo "Run independent of shell session:"
  echo "  ./script.sh"
  echo "Run within current shell session:"
  echo "  . script.sh"
}

myMath(){
  echo "Declaration:"
  echo "  A=1"
  echo "  B=2"
  echo
  echo "3 ways to do math:"
  echo "  1. C=\$[A + B]"
  echo "  2. C=\$((A * B))"
  echo "  3. let C=A-B"

  echo
  echo "Usage:"
  echo "  1. echo \$C - prints 3"
  echo "  2. echo \$C - prints 2"
  echo "  3. echo \$C - prints -1"
}

myVariable(){
  echo "Declaration:"
  echo "  NUMBER=123"
  echo "  WORD='text'"
  echo
  echo "Usage:"
  echo "  echo \$NUMBER"
  echo "  echo \$WORD"
}

myList(){
  echo "Declaration:"
  echo "  LIST='str_1 str_2 str_3'"
  echo
  echo "Usage:"
  echo "  echo \$LIST"
  echo
  echo "Execute \"bcs --for_each\" to see how to use LIST with for each loop."
}

myIncrement(){
  echo "Declaration:"
  echo "  COUNTER=0"
  echo
  echo "3 ways to increment:"
  echo '  1. let COUNTER=$COUNTER+1'
  echo '  2. let COUNTER=$((++COUNTER))'
  echo '  3. COUNTER=$((++COUNTER))'
  echo
  echo "Usage:"
  echo "  echo \$COUNTER"
}

myIf(){
  echo "if [ conditions ]; then"
  echo "  some code"
  echo "elif [ conditions ]; then"
  echo "  some more code"
  echo "else"
  echo "  even more code"
  echo "fi"
}

myIfShort(){
  echo "[ conditions ] && command for true || command for false"
}

myIfLogicalOperators(){
  echo  "And: '-a'"
  echo "Usage:"
  echo "  if [ 1 = 1 -a 2 = 2 ]; then"
  echo
  echo  "Or:  '-o'"
  echo "Usage:"
  echo "  if [ 1 = 1 -o 2 = 2 ]; then"
}

myIfComparisonOperators(){
  echo "Equal: '=' or '-eq'"
  echo "Usage:"
  echo "  if [ 1 = 1 ]; then"
  echo "  if [ 1 -eq 1 ]; then"
  echo
  echo "Not Equal: '!=' or '-ne'"
  echo "Usage:"
  echo "  if [ 1 != 2 ]; then"
  echo "  if [ 1 -ne 2 ]; then"
  echo
  echo "Greater Than:  '-gt'"
  echo "Usage:"
  echo "  if [ 2 -gt 1 ]; then"
  echo
  echo "Greater Than or Equal: '-ge'"
  echo "Usage:"
  echo "  if [ 2 -ge 1 ]; then"
  echo
  echo "Less Than:  '-lt'"
  echo "Usage:"
  echo "  if [ 1 -lt 2 ]; then"
  echo
  echo "Less Than or Equal:  '-le'"
  echo "Usage:"
  echo "  if [ 1 -le 2 ]; then"
}

myIfTestOperators(){
  echo "-a file     - Does the file exist? (same as '-e')"
  echo "-b file     - Is the file a special block device?"
  echo "-c file     - Is the file character special? (a character device)"
  echo "-d file     - Is the file a directory?"
  echo "-e file     - Does the file exist? (same as '-a')"
  echo "-f file     - Does the file exist, and is it a regular file? (not a directory, socket, pipe, link or device)"
  echo "-g file     - Does the file have the set-group-id (SGID) bit set?"
  echo "-h file     - Is the file a symbolic link? (same as '-L')"
  echo "-k file     - Does the file have the sticky bit set?"
  echo "-L file     - Is the file a symbolic link? (same as '-h')"
  echo "-n string   - Is the length of the string greater than 0 bytes?"
  echo "-o file     - Do you own the file?"
  echo "-p file     - Is the file a named pipe?"
  echo "-r file     - Is the file readable by you?"
  echo "-s file     - Does the file exist, and is it larger than 0 bytes?"
  echo "-S file     - Does the file exist, and is it a socket?"
  echo "-t fd       - Is the file descriptor connected to a terminal?"
  echo "-u file     - Does the file have the set-user-id (SUID) bit set?"
  echo "-w file     - Is the file writable by you?"
  echo "-x file     - Is the file executable by you?"
  echo "-z string   - Is the length of the string 0 bytes?"
}

myCase(){
  echo "case \$VALUE in"
  echo "  value1)"
  echo "    some code;;"
  echo "  value2)"
  echo "    some code;;"
  echo "  *)"
  echo "    some code;;"
}

myFor(){
  echo "LIMIT=10"
  echo "Option 1:"
  echo "  for ((x = 0; x < \$LIMIT; x++)); do"
  echo "    some code"
  echo "  done"
  echo
  echo "Option 2:"
  echo "  for ((x = 0; x < \$LIMIT; x++)){"
  echo "    some code"
  echo "  }"
}

myForEach(){
  echo "LIST='item_1 item_2 item_3'"
  echo "for ITEM in \$LIST; do"
  echo "  echo \$ITEM"
  echo "  some other code"
  echo "done"
}

myWhile(){
  echo "while [ conditions ]; do"
  echo "  some code"
  echo "done"
}

myUntil(){
  echo "until [ conditions ]; do"
  echo " some code"
  echo "done"
}

#
# Main routine
#

if [ $# != 1 ]; then
  help
  exit 1
else
  case $1 in
    "--help")
      help;;
    "--options")
      options;;
    "--run")
      myRun;;
    "--math")
      myMath;;
    "--variable")
      myVariable;;
    "--list")
      myList;;
    "--increment")
      myIncrement;;
    "--if")
      myIf;;
    "--if_short")
      myIfShort;;
    "--if_logical")
      myIfLogicalOperators;;
    "--if_compare")
      myIfComparisonOperators;;
    "--if_test")
      myIfTestOperators;;
    "--case")
      myCase;;
    "--for")
      myFor;;
    "--for_each")
      myForEach;;
    "--while")
      myWhile;;
    "--until")
      myUntil;;
    *)
       printf "Invalid option.\nRun \"bcs --options\" to get a list of options.\n";
       exit 1;;
    esac
fi

#>> EOF <<
