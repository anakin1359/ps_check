#!/bin/bash
ps_list=$(cat ./ps_list)

for p in ${ps_list} ; do
  ps -C ${p} > /dev/null 2>&1 ;
  if [ $? -eq 0 ] ; then
    echo -e "\e[32mUP\e[m: ${p}" ;
  else
    echo -e "\e[31;5mDOWN\e[m: ${p}" ;
  fi ;
done

