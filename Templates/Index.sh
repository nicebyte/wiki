#!/bin/bash
source Templates/Header.sh
cat <<EOF
**Welcome to ${WIKI_TITLE}**

${DOCUMENT_BODY}
EOF

echo '<div style = "column-count: 3; column-gap: 1em; column-rule-style: solid">'
for CATEGORY in ${CATEGORY_LIST};
do
	echo "<a href=\"/Wiki/Category_${CATEGORY}.html\">${CATEGORY}</a><br/>"
done
echo "</div>"

source Templates/Footer.sh

