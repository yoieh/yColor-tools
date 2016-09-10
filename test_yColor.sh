#!/usr/bin/env bash

function IMPORT_yColor {
    yoieh_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd)"
    yColor_DIR=${yoieh_DIR}"/yColor/"

    if [ -d "${yColor_DIR}" ]; then
        source ${yColor_DIR}"yColor.sh";
        return 0
    else
        return 1
    fi
}

function IF_yColor {
    if IMPORT_yColor; then
        printf "%syColor is installed in :\n %s%s%s\n"\
                "${yc[GR_B]}"\
                "${yc[GR_U]}"\
                "${yColor_DIR}"\
                "${yc[RESET]}"
    else
        printf "Error: yColor not installd in :\n %s\n"\
                "${yColor_DIR}"
    fi
}

IF_yColor

exit 0
