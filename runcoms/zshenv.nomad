#!/usr/bin/env zsh

export NOMAD_SERVER=p-nomad-server-1.use1.systeminsights.com:4646

# jobs

function n-jobs() {
  if [[ -z "$1" ]]; then
    prefix=""
  else
    prefix="?prefix=$1"
  fi
  curl --silent "${NOMAD_SERVER}/v1/jobs${prefix}"
}

function n-job-names() {
  n-jobs $1
}
