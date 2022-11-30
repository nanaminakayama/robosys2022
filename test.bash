#!/bin/bash -xv
# SPDX-FileCopyrightText: 2022 Ryuichi Ueda
# SPDX-License-Identifier: BSD-3-Clause

ng (){
        echo NG at Line ${1}
        res=1
}
res=0

out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}
[ "${res}" = 0 ] && echo OK 
exit $res

out=$(seq 5 | .plus)
[ "${out}" = 15 ] || ng ${LINENO}

out=$(seq -5 1 10 | ./plus)
[ "${out}" = 70 ] || ng ${LINENO}


out=$(echo あ | ./plus)
[ "$" = 1]      || ng ${LINENO}
[ "${out}" = ""] || ng ${LINENO}

out = $(echo | ./plus)
[ "$?" = 1 ]     || ng ${LINENO}
[ "${out}" = "" ] || ng ${LONENO}

[ "$res" = 0 ] && echo OK
exit $res
