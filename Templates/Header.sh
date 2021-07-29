#!/bin/bash
PAGE_TITLE="${DOCUMENT_TITLE} - ${WIKI_TITLE}"
if [ -z "${DOCUMENT_TITLE}" ]
then
	PAGE_TITLE="${WIKI_TITLE}"
fi

cat << EOF
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
		<link rel="stylesheet" href="WebAssets/slate.css">
    <title>${PAGE_TITLE}</title>
  </head>
  <body>
EOF
