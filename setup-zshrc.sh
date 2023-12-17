# This file can be used to configure .zshrc file



echo "Configuração de ALIAS e etc.."


REPOSITORY_PATH=$(pwd)

COMMANDS_PATH=$REPOSITORY_PATH/commands.md
TODOIST_PATH=$REPOSITORY_PATH/todoist.md
WELCOME_PATH=$REPOSITORY_PATH/welcome-terminal.md

SHELL_PATH=$(echo $SHELL)
SHELL_TERMINAL_RC_PATH=~/."${SHELL_PATH##*/}""rc"



### Add alias to shortcuts for terminal
COMMANDS_ALIAS="alias shortcuts='cat $COMMANDS_PATH'"
TODOIST_ALIAS="alias todo='cat $TODOIST_PATH'"

echo  "$COMMANDS_ALIAS" >> $SHELL_TERMINAL_RC_PATH
echo  "$TODOIST_ALIAS" >> $SHELL_TERMINAL_RC_PATH


# Add welcome path to .zshrc
echo  "cat $WELCOME_PATH" >> $SHELL_TERMINAL_RC_PATH

source $SHELL_TERMINAL_RC_PATH


echo "Setup Finalizado"