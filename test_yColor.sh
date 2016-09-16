#!/usr/bin/env bash

declare yColor_dir

function IMPORT_yColor {
    yoieh_DIR1="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd)"
    yoieh_DIR2="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && cd .. && pwd)"
    yColor_DIR1=${yoieh_DIR1}"/yColor/"
    yColor_DIR2=${yoieh_DIR2}"/yColor/"

    if [ -d "${yColor_DIR1}" ]; then
        source ${yColor_DIR1}"yColor.sh";
	echo ${yColor_DIR1}
	yColor_dir=${yColor_DIR1}
        return 0
    elif [ -d "${yColor_DIR2}" ]; then
        source ${yColor_DIR2}"yColor.sh";
	yColor_dir=${yColor_DIR2}
        return 0
    else
        return 1
    fi
}

function IF_yColor {
    if IMPORT_yColor; then
	source ${yColor_dir}"yColor.sh";
        printf "%syColor is installed in :\n %s%s%s\n"\
                "${yc[GR_B]}"\
                "${yc[GR_U]}"\
                "${yColor_dir}"\
                "${yc[RESET]}"
	return 0
    else
        printf "Error: yColor not installd :\n %s\n"\
                "${yColor_dir}"
	return 1
    fi
}

if IF_yColor; then
	source ${yColor_dir}"yColor.sh";
fi
