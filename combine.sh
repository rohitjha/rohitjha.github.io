#!/bin/sh
cd assets/css
rm style.css
cat font-awesome.min.css lato.css main.css > style.css
curl -X POST -s --data-urlencode 'input@style.css' https://cssminifier.com/raw > style.min.css

cd ../js
rm main.min.js
curl -X POST -s --data-urlencode 'input@main.js' https://javascript-minifier.com/raw > main.min.js
cat jquery.min.js jquery.scrollzer.min.js jquery.scrolly.min.js skel.min.js main.min.js > script.min.js