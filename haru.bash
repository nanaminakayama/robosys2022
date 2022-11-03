#!/bin/bash

ng(){
	echo ${1}行目が違うよ
	ret=1

}
res=0
a=nana
[ "$a" = nana ] || ng "$LINENO"
[ "$a" = haru ] || ng "$LINENO"

exit $ret
