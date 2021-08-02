#!/bin/bash
source Templates/Header.sh
cat <<EOF
**${DOCUMENT_TITLE}**
([edit](${WIKI_GITHUB_URL}/edit/Wiki/${DOCUMENT_TITLE}.md))

${DOCUMENT_BODY}
EOF
source Templates/Footer.sh

