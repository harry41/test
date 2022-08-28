myFunction(){
    echo "Running: ${FUNCNAME}"
    echo "HAS_SUDO: ${HAS_SUDO}
    SLACK_CHANNEL: ${SLACK_CHANNEL}"
}

env | ${SLACK_BIN:-mslack} chat send --title "Env: $(hostname)"  --channel '#mtracker' --color good
echo "Executed. Please check Slack."