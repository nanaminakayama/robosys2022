#!/bin/bash
# SPDX-FileCopyrightText: 2022 Ryuichi Ueda
# SPDX-License-Identifier: BSD-3-Clause

ng (){
        echo NG at Line ${1}
        res=1
}
res=0

out=$(seq 5 | ./plus)
[ "${out}" = 15.0 ] || ng ${LINENO}
[ "${res}" = 0 ] && echo OK 
exit $res
