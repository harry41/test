#mCloud-Monitor
echo "CODEBASE_DIR: ${CODEBASE_DIR}"

if [[ ${HAS_SUDO} == true ]]; then
  echo "installing - yq"
  cd /tmp
  wget -q https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64.tar.gz -O - |\
    tar xz && mv yq_linux_* /usr/bin/yq
fi



