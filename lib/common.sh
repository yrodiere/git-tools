# To be sourced from other scripts

set -o errexit
set -o pipefail

CMD_JQ=$(which jq)

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

function join_by {
        local IFS="$1"
        shift
        echo "$*"
}

function jq() {
	test -n "$CMD_JQ" || abort "You must install the JSON parsing utility 'jq' first."
        $CMD_JQ -e "${@}"
}

function urlencode() {
	jq -s -R -r '@uri'
}


