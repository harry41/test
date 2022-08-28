NAME=dan

echo "$NAME"
echo "HAS_SUDO: ${HAS_SUDO}
SLACK_CHANNEL: ${SLACK_CHANNEL}
"

printenv | ${SLACK_BIN:-mslack} chat send --title "PrintEnv"  --channel '#mtracker' --color good --filter '.ts'
echo "Executed. Please check Slack."