#!/usr/bin/env bash
agent_start(){
  if [[ ! -z ${SLACK_CLI_TOKEN} ]]; then
    SLACK_TITLE="${GETMAC//:/} | ${USER:-Cron} Agent Started ${HOSTNAME}"
    SLACK_MSG="*A97 Agent* : Started by \`${USER:-Cron}\` on  \`$(hostname)\` \n *Server IP* : \`${PUB_IP} | ${PRIVATE_IP}\` \n *Hostname* : \`${HOSTNAME}\` \n *User* : \`${USER:-Cron}\` \n *Timestamp* : \`$(date)\` \n *MAC* : \`${GETMAC}\`"
    ${SLACK_BIN:-mslack} chat send --title "${SLACK_TITLE}" --text "${SLACK_MSG}" --channel "${SLACK_CHANNEL}" --color good > /dev/null 2>&1
  fi
}

agent_start
