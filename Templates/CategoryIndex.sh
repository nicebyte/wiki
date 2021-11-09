#!/bin/bash
source Templates/Header.sh
cat <<EOF
**Articles in Category ${DOCUMENT_TITLE}**

<div style = "column-count: 3; column-gap: 1em; column-rule-style: solid">
${DOCUMENT_BODY}
</div>
EOF
source Templates/Footer.sh

