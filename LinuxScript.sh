#!/bin/bash

#INIT_ENVARS="https://raw.githubusercontent.com/harry41/test/main/LinuxScript.sh|123hello45|3|e"
INIT_VARS=("https://raw.githubusercontent.com/harry41/test/main/scripts/init-vars.sh")

CENTOS_PKGS=(jq nginx)
UBUNTU_PKGS=(jq nginx)

#CURL_PKGS='remote_file_url|/bin/file|644 remote_file_url2|/bin/file2|755'
#RUN_SHELL_SCRIPTS=("https://raw.githubusercontent.com/harry41/test/main/ShellScript.sh" "https://raw.githubusercontent.com/harry41/test/main/ShellScript2.sh")
RUN_SHELL_SCRIPTS=(https://raw.githubusercontent.com/harry41/test/main/scripts/RunScript.sh)
RUN_SHELL_ENSCRIPTS=( 'xOybQYmmuPFYkkE+Sh3h1A==|123helloharry43|3|d' )

MYARRAY=(file file2 file3)
