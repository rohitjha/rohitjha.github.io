#!/bin/sh
rm style.css
cat font-awesome.min.css lato.css main.css > style.css
# wget --post-data="input=`cat style.css`" --output-document=style.min.css https://cssminifier.com/raw
curl -X POST -s --data-urlencode 'input@style.css' https://cssminifier.com/raw > style.min.css