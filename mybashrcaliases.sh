#Aliases File: Put all commands found here in .bashrc
#Basic directory copy
alias rs="rsync -av"
#Makes to folders identical ****DELETES FILES
alias rsd="rsync -av --delete"
#USe ssh to copy Directory to removte server
# rsync -av –delete -e ssh /Directory1/ geek@192.168.235.137:/Directory2/
alias rsrm=" rsync -av –delete -e ssh "
alias ll="ls -la"\
alias pgit="git push -u origin master"
