#!/bin/bash
: "${FITNESSE_CONTEXT_ROOT_ARG:=someContextRoot}"
: "${DIVA_CLIENT_CONTEXT_ROOT_ARG:=someContextRoot}"

#shibboleth2.xml must be in /etc/shibboleth
cp -f /etc/shibboleth/credentials/* /etc/shibboleth/

sed -i "s|{FITNESSE_CONTEXT_ROOT}|${FITNESSE_CONTEXT_ROOT_ARG}|g" /usr/local/apache2/conf/extra/cora-vhosts.conf
sed -i "s|{DIVA_CLIENT_CONTEXT_ROOT}|${DIVA_CLIENT_CONTEXT_ROOT_ARG}|g" /usr/local/apache2/conf/extra/cora-vhosts.conf

supervisord -c /etc/supervisor/conf.d/supervisord.conf