#!/bin/bash

source Config.sh

mkdir -p public
cp -r WebAssets public/
cp -r Media public/

declare -A CATEGORY_INDEX

for DOCUMENT_FILENAME in ./Articles/*.md;
do
	DOCUMENT_BASENAME=`basename ${DOCUMENT_FILENAME}`
	export DOCUMENT_TITLE="${DOCUMENT_BASENAME%.*}"
	if [ "${DOCUMENT_TITLE}" = "${MAIN_PAGE_NAME}" ]
	then
		continue
	fi
	DOCUMENT_CATEGORIES=`egrep "Categories\: +(\[.+\]\(.+\) *,? *)+$" ${DOCUMENT_FILENAME} -o | egrep "\[[[:alnum:]]+\]" -o | tr -d '[]'`

	if [ -z "${DOCUMENT_CATEGORIES}" ]
	then
		echo "${DOCUMENT_FILENAME} has no catgeories listed, exiting"
		exit 1
	fi
	for DOCUMENT_CATEGORY in ${DOCUMENT_CATEGORIES};
	do
		CATEGORY_INDEX[${DOCUMENT_CATEGORY}]+=" ${DOCUMENT_TITLE}"
	done
	
	export DOCUMENT_BODY=`cat ${DOCUMENT_FILENAME}`
	bash Templates/Article.sh > "public/${DOCUMENT_TITLE}.html"
done

export CATEGORY_LIST=""
for CATEGORY in ${!CATEGORY_INDEX[@]};
do
	CATEGORY_LIST+=" ${CATEGORY}"
	export DOCUMENT_TITLE=${CATEGORY}
	LINKS=""
	for DOCUMENT in ${CATEGORY_INDEX[$CATEGORY]};
	do
		LINKS+="<a href='${DOCUMENT}.html'>${DOCUMENT}</a><br/>"
	done
	export DOCUMENT_BODY="${LINKS}"
	bash Templates/CategoryIndex.sh > "public/Category${CATEGORY}.html"
done

export DOCUMENT_TITLE=
export DOCUMENT_BODY=`cat Articles/${MAIN_PAGE_NAME}.md`
bash Templates/Index.sh > "public/index.html"
	
