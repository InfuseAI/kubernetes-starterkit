#! /bin/bash
function info() {
  echo -e "\033[0;32m$1\033[0m"
}

function helm-switch() {
  case "$1" in
    2)
      info "Switch to helm2"
      ln -nfs /usr/local/bin/helm2 /usr/local/bin/helm
      ln -nfs /usr/local/bin/helmfile2 /usr/local/bin/helmfile
    ;;
    3)
      info "Switch to helm3"
      ln -nfs /usr/local/bin/helm3 /usr/local/bin/helm
      ln -nfs /usr/local/bin/helmfile3 /usr/local/bin/helmfile
    ;;
    *)
      info "Current Helm version"
      helm version --short -c
      info "CUrrent Helmfile version"
      helmfile -v
    ;;
  esac
}

helm-switch "$@"
