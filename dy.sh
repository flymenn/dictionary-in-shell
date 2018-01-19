#!/bin/bash
# @author kdlgfnn@gmail.com
# add to .zshrc or .bashrc the string 
# alias dy = '~/dy.sh'
# use way:
# dy help
#
# vt. & vi. 帮助 do sth for the benefit of sb in need
# vt. & vi. 有助于,有利于 be of aid or use to
# vt. 避免; 抑制,克制 avoid; restrain
# [U]帮助,援助 the act of helping; aid; assistance
# [S]助手,帮忙的人或物 a person or a thing that helps
# [C]佣人,女佣 domestic servant, especially female house servant
# [C]补救办法,治疗方法 a method of setting right; a way of curing diseases
#
#
#
#

if [ ! -z $1 ] 
then 
    VAR= curl -s http://dict.cn/$1 | grep "<li><strong>" | tr -d '\t' | sed 's/<li><strong>//g' | sed 's/<\/li>//g' | sed 's/<\/strong>//g'
    echo $VAR

else
    echo 'please input a world '
fi
