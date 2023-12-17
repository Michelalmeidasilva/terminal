## Work aliases
source functions/helpers.sh

SHELL_TERMINAL_RC_PATH=$(getShellPath)

CD_SIL_ALIAS="alias cd:sil='cd $WORKSPACE_WEB_PATH/drogasil && nvm use'"
CD_RAIA_ALIAS="alias cd:raia='cd $WORKSPACE_WEB_PATH/drogaraia && nvm use'"
CD_BFF_SITE_ALIAS="alias cd:bff-site='cd $WORKSPACE_WEB_PATH/bff-site'"
CD_BFF_APP_ALIAS="alias cd:bff-app='cd $WORKSPACE_APP_PATH/br-raiadrogasil-server-api && nvm use'"
CD_APP_ALIAS="alias cd:app='cd $WORKSPACE_APP_PATH/br-raiadrogasil-app && nvm use'"

WEB_WATCH_ALIAS="alias web:setup='nvm use && npm run setup'"
WEB_COMPILE_ALIAS="alias web:compile='nvm use && npm run server'"
WEB_SETUP_ALIAS="alias web:watch='nvm use && npm run watch'"


# ## Mount alias content
echo "Adicionando Aliases no $SHELL_TERMINAL_RC_PATH"

echo $WEB_SETUP_ALIAS
echo  "$WEB_SETUP_ALIAS" >> $SHELL_TERMINAL_RC_PATH
echo  "$WEB_WATCH_ALIAS" >> $SHELL_TERMINAL_RC_PATH
echo  "$WEB_COMPILE_ALIAS" >> $SHELL_TERMINAL_RC_PATH
echo  "$CD_SIL_ALIAS" >> $SHELL_TERMINAL_RC_PATH
echo  "$CD_RAIA_ALIAS" >> $SHELL_TERMINAL_RC_PATH
echo  "$CD_BFF_SITE_ALIAS" >> $SHELL_TERMINAL_RC_PATH
echo  "$CD_BFF_APP_ALIAS" >> $SHELL_TERMINAL_RC_PATH
echo  "$CD_APP_ALIAS" >> $SHELL_TERMINAL_RC_PATH
