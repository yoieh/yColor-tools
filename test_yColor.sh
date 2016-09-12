#!/usr/bin/env bash

function IMPORT_yColor {
    yoieh_DIR1="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd)"
    yoieh_DIR1="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && cd .. && pwd)"
    yColor_DIR1=${yoieh_DIR1}"/yColor/"
    yColor_DIR2=${yoieh_DIR2}"/yColor/"

    if [ -d "${yColor_DIR1}" ]; then
        source ${yColor_DIR1}"yColor.sh";
        return 0
    elif [ -d "${yColor_DIR2}" ]; then
        source ${yColor_DIR2}"yColor.sh";
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
