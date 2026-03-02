#!/bin/bash

if [ -z "$SERVER_NAME_ARG" ]; then
	exit 1
fi

# Output robots.txt to the root directory for Apache
cat > "robots.txt" <<EOF
User-agent: *
Allow: /divaclient/diva-output/
Disallow: /

Sitemap: ${SERVER_NAME_ARG}/sitemap.xml
EOF
