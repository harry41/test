myFunction(){
    echo "Running: ${FUNCNAME}"
    echo "HAS_SUDO: ${HAS_SUDO}
    SLACK_CHANNEL: ${SLACK_CHANNEL}"

    ${SLACK_BIN:-mslack} chat send --title "Env: $(hostname)"  --channel '#mtracker' --color good \
    --pretext "$(hostname)" \
    --text "$(pwd) \n $(free -h)"
echo "Executed. Please check Slack."
}

