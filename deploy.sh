# build
npm run build

# target build.js is in different path on development and production of GitHub Pages
# A better way should be using [html-webpack-plugin](https://github.com/jantimon/html-webpack-plugin)
cp index.pages.html dist/index.html

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:MAXI0008/Vue-ToDo-List.git master:gh-pages
git remote add origin https://github.com/MAXI0008/Vue-ToDo-List.git
git push -f origin master:gh-pages


cd -
