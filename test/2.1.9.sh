#!/bin/sh
# ** AUTO GENERATED **

# 2.1.9 - Ensure tftp server is not enabled (Scored)

out=$(chkconfig --list | grep -E "^(tftp)\s" |grep ":on")
[[ -z "${out}" ]] || return 1

