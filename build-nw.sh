
haxe build-html5.hxml
pushd build/html5/
cp main.js ../nw/app/content/main.js
cp index.html ../nw/app/content/index.html
popd

pushd build/nw
npm install
npm run prod
# npm run dev
