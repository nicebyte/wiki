#!/bin/bash

source Config.sh

mkdir -p ${OUTPUT_DIR}/Wiki
cp -r WebAssets ${OUTPUT_DIR}/
cp -r Media ${OUTPUT_DIR}/

declare -A CATEGORY_INDEX

for DOCUMENT_FILENAME in ./Wiki/*;
do
	DOCUMENT_BASENAME=`basename ${DOCUMENT_FILENAME}`
	export DOCUMENT_TITLE="${DOCUMENT_BASENAME%.*}"
	if [ "${DOCUMENT_BASENAME}" = "${MAIN_PAGE_FILE_NAME}" ]
	then
		continue
	fi
	DOCUMENT_CATEGORIES=`egrep "Categories\: +(\[\[\:[[:alnum:]]+\]\] *,? *)+$" ${DOCUMENT_FILENAME} -o | egrep "\[\[\:[[:alnum:]]+\]\]" -o | tr -d '[:]'`

	if [ -z "${DOCUMENT_CATEGORIES}" ]
	then
		echo "${DOCUMENT_FILENAME} has no catgeories listed, exiting"
		exit 1
	fi
	for DOCUMENT_CATEGORY in ${DOCUMENT_CATEGORIES};
	do
		CATEGORY_INDEX[${DOCUMENT_CATEGORY}]+=" ${DOCUMENT_TITLE}"
	done
	
	export DOCUMENT_BODY=`sed "s/\[\[\([[:alnum:]]\+\)\]\]/<a href=\"\/Wiki\/\1.html\">\1<\/a>/g; s/\[\[:\([[:alnum:]]\+\)\]\]/<a href=\"\/Wiki\/Category_\1.html\">\1<\/a>/g" ${DOCUMENT_FILENAME}`
	bash Templates/Article.sh > "${OUTPUT_DIR}/Wiki/${DOCUMENT_TITLE}.html"
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
	export DOCUMENT_BODY=`echo ${LINKS} | xargs -n1 | sort`
	bash Templates/CategoryIndex.sh > "${OUTPUT_DIR}/Wiki/Category_${CATEGORY}.html"
done
CATEGORY_LIST=`echo ${CATEGORY_LIST} | xargs -n1 | sort`
export DOCUMENT_TITLE=
export DOCUMENT_BODY=`cat Wiki/${MAIN_PAGE_FILE_NAME}`
bash Templates/Index.sh > "${OUTPUT_DIR}/index.html"
	
