# This file can be used to configure .zshrc file
cd ../
REPOSITORY_PATH=$(pwd)

# Configure Paths

## Markdown Paths
COMMANDS_PATH=$REPOSITORY_PATH/markdowns/commands.md
TODOIST_PATH=$REPOSITORY_PATH/markdowns/todoist.md
WELCOME_PATH=$REPOSITORY_PATH/markdowns/welcome-terminal.md


## Scripts paths
UPDATE_REPOSITORY_PATH=$REPOSITORY_PATH/scripts/update-repository.sh
SETUP_GIT_PATH=$REPOSITORY_PATH/scripts/setup-git.sh


## Shell paths
SHELL_PATH=$(echo $SHELL)
SHELL_TERMINAL_RC_PATH=~/."${SHELL_PATH##*/}""rc"

## Mount alias content
COMMANDS_ALIAS="alias shortcuts='cat $COMMANDS_PATH'"
TODOIST_ALIAS="alias todo='cat $TODOIST_PATH'"
PULL_REPOSITORY_ALIAS="alias update-term='$UPDATE_REPOSITORY_PATH'"

echo "Configuração de ALIAS e etc.."

echo "Dando o permissões para shell script"
chmod +x $SETUP_GIT_PATH
chmod +x $UPDATE_REPOSITORY_PATH

echo "Adicionando Aliases no $SHELL_TERMINAL_RC_PATH"
echo  "$COMMANDS_ALIAS" >> $SHELL_TERMINAL_RC_PATH
echo  "$TODOIST_ALIAS" >> $SHELL_TERMINAL_RC_PATH
echo  "$PULL_REPOSITORY_ALIAS" >> $SHELL_TERMINAL_RC_PATH

# Add welcome path to .zshrc
echo "Adicionando markdown de welcome no $SHELL_TERMINAL_RC_PATH"
echo  "cat $WELCOME_PATH" >> $SHELL_TERMINAL_RC_PATH


echo "Corrigindo configurações do linux no gnome tweaks [constructing]"

echo "Adicionando CRON para atualizar todo o dia o repositório"
(crontab -l ; echo "@reboot $UPDATE_REPOSITORY_PATH") | crontab -

echo "Setup Finalizado"


echo "Rode  o comando:\nsource $SHELL_TERMINAL_RC_PATH\nPara refletir as mudanças no terminal"


