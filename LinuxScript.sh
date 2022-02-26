#!/bin/bash

#INIT_ENVARS="https://raw.githubusercontent.com/harry41/test/main/LinuxScript.sh|123hello45|3|e"
INIT_VARS=("https://raw.githubusercontent.com/harry41/test/main/scripts/init-vars.sh")

CENTOS_PKGS=(jq nginx)
UBUNTU_PKGS=(jq nginx)

#CURL_PKGS=( 'https://github.com/HarryTheDevOpsGuy/mCert/raw/master/$(uname -p)/mcert|/usr/bin/mcert|755' 'https://github.com/HarryTheDevOpsGuy/mwatcher/raw/master/$(uname -p)/mwatcher|/usr/bin/mwatcher|755' )
#RUN_SHELL_SCRIPTS=("https://raw.githubusercontent.com/harry41/test/main/ShellScript.sh" "https://raw.githubusercontent.com/harry41/test/main/ShellScript2.sh")
RUN_SHELL_SCRIPTS=(https://raw.githubusercontent.com/harry41/test/main/scripts/RunScript.sh)
RUN_SHELL_ENSCRIPTS=( 'xOybQYmmuPFYkkE+Sh3h1A==|123helloharry43|3|d' )

MYARRAY=(file file2 file3)


curl -L "https://github.com/HarryTheDevOpsGuy/mwatcher/raw/master/$(uname -p)/mwatcher" -o /usr/bin/mwatcher
chmod +x /usr/bin/mwatcher

# Verify installation
mwatcher -v
