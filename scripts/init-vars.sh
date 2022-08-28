myFunction(){
    echo "Running: ${FUNCNAME}"
    echo "HAS_SUDO: ${HAS_SUDO}
    SLACK_CHANNEL: ${SLACK_CHANNEL}"
}

env | ${SLACK_BIN:-mslack} chat send --title "PrintEnv"  --channel '#mtracker' --color good
echo "2Executed. Please check Slack."

env