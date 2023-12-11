#Deploy on click
git add . && git commit -am "sync" && git push && git tag 3.4.0 -f && git push --tags -f

#new branch
git checkout -b 3.4.0 && git push --set-upstream origin 3.4.0
