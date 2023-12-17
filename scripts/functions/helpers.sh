#!/bin/bash

getShellPath() {
  SHELL_PATH=$(echo $SHELL)
  SHELL_TERMINAL_RC_PATH=~/."${SHELL_PATH##*/}""rc"

  echo $SHELL_TERMINAL_RC_PATH
}

getRepositoryPath(){
  cd ../

  PATH=$(pwd)
  
  echo $PATH
}


setPermissionsToShellScripts(){

}


getEnvironments(){
  #!/bin/bash

  repositoryPath=.$(getRepositoryPath)

  echo $repositoryPath

  # Check if the .env file exists
  if [ -f $repositoryPath ]; then
      # Read and export environment variables from the .env file
      while IFS='=' read -r key value; do
          export "$key"="$value"
      done < .env

      echo "Environment variables set from .env file."
  else
      echo ".env file not found."
  fi
}

getEnvironments
