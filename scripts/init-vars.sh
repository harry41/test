NAME=dan

echo "$NAME"
echo "HAS_SUDO: ${HAS_SUDO}
SLACK_CHANNEL: ${SLACK_CHANNEL}
"

df -h | ${SLACK_BIN:-mslack} chat send --title "PrintEnv"  --channel '#mtracker' --color good
echo "Executed. Please check Slack."

env