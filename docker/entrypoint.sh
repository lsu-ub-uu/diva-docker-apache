#!/bin/bash
: "${FITNESSE_CONTEXT_ROOT_ARG:=someContextRoot}"

sed -i "s|{FITNESSE_CONTEXT_ROOT}|${FITNESSE_CONTEXT_ROOT_ARG}|g" /usr/local/apache2/conf/extra/cora-vhosts.conf

supervisord -c /etc/supervisor/conf.d/supervisord.conf