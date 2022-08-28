#!/usr/bin/env bash 

updateapps(){
  echo "Running: ${FUNCNAME}"
  if [[ ${HAS_SUDO} == true ]]; then  
    #[ -f /etc/cron.weekly/update-mtracker ] || sudo curl -L "https://raw.githubusercontent.com/HarryTheDevOpsGuy/mTracker/master/src/update-apps.sh" -o /etc/cron.weekly/update-mtracker
    sudo curl -L "https://raw.githubusercontent.com/HarryTheDevOpsGuy/mTracker/master/src/cron.sh" -o /etc/cron.d/mtracker
    sudo rm -rf /etc/cron.weekly/update-mtracker
  else
    log_debug "${USER}" "${FUNCNAME} - you are not sudo user."
  fi
}

agent_start(){
  echo "Running: ${FUNCNAME}"
  if [[ ! -z ${SLACK_CLI_TOKEN} ]]; then
    SLACK_TITLE="${GETMAC//:/} | ${USER:-Cron} Agent Started ${HOSTNAME}"
    SLACK_MSG="*A97 Agent* : Started by \`${USER:-Cron}\` on  \`$(hostname)\` \n *Server IP* : \`${PUB_IP} | ${PRIVATE_IP}\` \n *Hostname* : \`${HOSTNAME}\` \n *User* : \`${USER:-Cron}\` \n *Timestamp* : \`$(date)\` \n *MAC* : \`${GETMAC}\`"
    ${SLACK_BIN:-mslack} chat send --title "${SLACK_TITLE}" --text "${SLACK_MSG}" --channel '#mtracker' --color good --filter '.ts' #> /dev/null 2>&1
  fi
}

#agent_start
updateapps

myFunction


