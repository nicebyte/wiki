#!/bin/bash
source Templates/Header.sh
cat <<EOF
**Articles in Category ${DOCUMENT_TITLE}**

${DOCUMENT_BODY}
EOF
source Templates/Footer.sh

