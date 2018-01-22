# To be sourced from other scripts

set -o errexit
set -o pipefail

function log() {
        echo 1>&2 "${@}"
}

function abort() {
        log "${@}"
        log 'Aborting.'
        exit 1
}

function success() {
        log "${@}"
        exit 0
}

function urlencode() {
        which jq 1>/dev/null || abort "You must install the JSON parsing utility 'jq' first."
        jq -s -R -r @uri
}

