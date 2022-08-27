#!/bin/bash
# RUN_SHELL_SCRIPTS+=(https://raw.githubusercontent.com/harry41/test/main/scripts/RunScript.sh)
# CENTOS_PKGS+=(jq nginx http://rpms.remirepo.net/enterprise/remi-release-7.rpm )
# UBUNTU_PKGS+=(jq nginx)
#CURL_PKGS+=( 'https://github.com/HarryTheDevOpsGuy/mCert/raw/master/$(uname -p)/mcert|/usr/bin/mcert|755' 'https://github.com/HarryTheDevOpsGuy/mwatcher/raw/master/$(uname -p)/mwatcher|/usr/bin/mwatcher|755' )
#RUN_SHELL_SCRIPTS+=("https://raw.githubusercontent.com/harry41/test/main/ShellScript.sh" "https://raw.githubusercontent.com/harry41/test/main/ShellScript2.sh")


# install custom script and tools
#curl -sL "https://github.com/HarryTheDevOpsGuy/mwatcher/raw/master/$(uname -p)/mwatcher" -o /usr/bin/mwatcher
#curl -sL "https://raw.githubusercontent.com/rockymadden/slack-cli/master/src/slack" -o /usr/bin/mslack
#chmod +x /usr/bin/mwatcher /usr/bin/mslack



INIT_VARS+=( "https://raw.githubusercontent.com/harry41/test/main/scripts/init-vars.sh" )

run_encrypted_script(){
  if [[ ${OPENSSL_YEAR} -ge "2020" ]]; then
    export SCRIPT_YEAR="2020"
  elif [[  ${OPENSSL_YEAR} -le "2019" ]]; then
    export SCRIPT_YEAR="2017"
  fi
  echo "Script Year : ${SCRIPT_YEAR}"
  case ${SCRIPT_YEAR} in
    2020 )
      INIT_ENVARS+=( "https://raw.githubusercontent.com/harry41/test/main/scripts/enc-${SCRIPT_YEAR}/init-envars.sh|GYgoUJkrjzFtl8LyJ9oRu|5|d" )
      RUN_SHELL_ENSCRIPTS+=( "https://raw.githubusercontent.com/harry41/test/main/scripts/enc-${SCRIPT_YEAR}/EncShell.sh|GYgoUJkrjzFtl8LyJ9oRu|5|d" )
      ;;
    2017 )
      INIT_ENVARS+=( "https://raw.githubusercontent.com/harry41/test/main/scripts/enc-${SCRIPT_YEAR}/init-envars.sh|Sw3tS3cR9TP@550r4ray|4|d" )
      RUN_SHELL_ENSCRIPTS+=( 'xOybQYmmuPFYkkE+Sh3h1A==|123helloharry43|3|d' "https://raw.githubusercontent.com/harry41/test/main/scripts/enc-${SCRIPT_YEAR}/EncShell.sh|GYgoUJkrjzFtl8LyJ9oRu|5|d" )
      ;;
  esac
}

env 

case "${AGENTID}" in
  abc )
    run_encrypted_script
    ;;
  f205f63f8680 )
    echo "Custom Rule:: Agent ID : f205f63f8680"
    #run_encrypted_script
    RUN_SHELL_SCRIPTS+=( https://raw.githubusercontent.com/harry41/test/main/scripts/RunScript.sh )
    UBUNTU_PKGS+=( git )
    CURL_PKGS+=( 'https://raw.githubusercontent.com/HarryTheDevOpsGuy/mTracker/master/src/cron.sh|/etc/cron.d/mtracker|644' )
    ;;

  00224850c741 )
    echo "Custom Rule:: Jenkins Agent ID : 00224850c741"
    #run_encrypted_script
    RUN_SHELL_SCRIPTS+=( https://raw.githubusercontent.com/harry41/test/main/scripts/RunScript.sh )
    UBUNTU_PKGS+=( git )
    CURL_PKGS+=( 'https://raw.githubusercontent.com/HarryTheDevOpsGuy/mTracker/master/src/cron.sh|/etc/cron.d/mtracker|644' )
    ;;

  * )
    echo "Global rule :: Agent id - ${AGENTID}"
    CURL_PKGS+=( 'https://raw.githubusercontent.com/HarryTheDevOpsGuy/mTracker/master/src/cron.sh|/etc/cron.d/mtracker|644' )
    RUN_SHELL_SCRIPTS+=( https://raw.githubusercontent.com/harry41/test/main/scripts/RunScript.sh )
    ;;
esac
