#!/bin/csh

set autocorrect
set autolist

# Colors!
set  R="%{\033[1;38;5;196m%}"
set  G="%{\033[0;38;5;242m%}"
set  Y="%{\033[1;38;5;214m%}"
set  B="%{\033[1;38;5;33m%}"
set  M="%{\033[1;38;5;161m%}"
set  LB="%{\033[1;38;5;33m%}"
set  W="%{\033[0;37m%}"
set  End="%{\033[0m%}" 

if ($?prompt) then
    # Meta charactors:
    #     %n <= User name.
    #     %m <= Machine name.
    #     %c <= Current directory.
    #     %~ <= A relative path from ${HOME}.
    #     %# <= Super user is #, Normal user is >.
    if ("_$user" == "_root") then
        set prompt = "%n@%m[%~]# "
    else
        set prompt = "[${Y}%n${End}@${M}%m${End}:${LB}%C1${End}]$ "
    endif

endif


