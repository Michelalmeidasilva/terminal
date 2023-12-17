# This file can be used to configure .zshrc file



echo "Configuração de ALIAS e etc.."


REPOSITORY_PATH=$(pwd)

COMMANDS_PATH=$REPOSITORY_PATH/commands.md
TODOIST_PATH=$REPOSITORY_PATH/todoist.md
WELCOME_PATH=$REPOSITORY_PATH/welcome-terminal.md
UPDATE_REPOSITORY_PATH=$REPOSITORY_PATH/update-repository.sh


SHELL_PATH=$(echo $SHELL)
SHELL_TERMINAL_RC_PATH=~/."${SHELL_PATH##*/}""rc"


chmod +X $UPDATE_REPOSITORY_PATH


### Add alias to shortcuts for terminal
COMMANDS_ALIAS="alias shortcuts='cat $COMMANDS_PATH'"
TODOIST_ALIAS="alias todo='cat $TODOIST_PATH'"
PULL_REPOSITORY_ALIAS="alias update-term='.$UPDATE_REPOSITORY_PATH'"


echo "Adicionando Aliases"
echo  "$COMMANDS_ALIAS" >> $SHELL_TERMINAL_RC_PATH
echo  "$TODOIST_ALIAS" >> $SHELL_TERMINAL_RC_PATH
echo  "$PULL_REPOSITORY_ALIAS" >> $SHELL_TERMINAL_RC_PATH

# Add welcome path to .zshrc
echo  "cat $WELCOME_PATH" >> $SHELL_TERMINAL_RC_PATH



echo "Corrigindo configurações do linux seguindo padrão de teclado X"


echo "Adicionando cron para att todo o dia o repositório"

(crontab -l ; echo "@reboot $UPDATE_REPOSITORY_PATH") | crontab -

echo "Setup Finalizado"

