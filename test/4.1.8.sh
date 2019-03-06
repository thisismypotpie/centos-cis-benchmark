#!/bin/sh
# ** AUTO GENERATED **

# 4.1.8 - Ensure login and logout events are collected (Scored)

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+logins" | egrep "\-p[[:space:]]+wa"   | egrep -q "\-w[[:space:]]+\/var\/run\/faillock" || return 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+logins" | egrep "\-p[[:space:]]+wa" | egrep -q "\-w[[:space:]]+\/var\/log\/lastlog" || return 1

#Testing the /etc/audit/rules.d/audit.rules file
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+logins" | egrep "\-p[[:space:]]+wa"   | egrep -q "\-w[[:space:]]+\/var\/run\/faillock" || return 1
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+logins" | egrep "\-p[[:space:]]+wa" | egrep -q "\-w[[:space:]]+\/var\/log\/lastlog" || return 1
