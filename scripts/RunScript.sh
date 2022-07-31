#!/usr/bin/env bash

set -x

agent_start(){
  SLACK_TITLE="${AGENTID}| ${USER} logged in ${HOSTNAME} on $(date)"
  SLACK_MSG="*A97 Agent* : Started by \`${USER}\` on  \`$(hostname)\` \n *Server IP* : \`${PUB_IP} | ${PRIVATE_IP}\` \n *Hostname* : \`${HOSTNAME}\` \n *User* : \`${USER}\` \n *Timestamp* : \`$(date)\` \n *MAC* : \`${GETMAC}\`"
  ${SLACK_BIN:-mslack} chat send --title "${SLACK_TITLE}" --text "${SLACK_MSG}" --channel "${SLACK_CHANNEL}" --color good
}

agent_start

env
