#!/bin/bash

cwd=$(pwd)

cd $cwd/book

git init
git remote add heroku https://git.heroku.com/signals-rs-api.git

mv index.html home.html
echo '<?php include_once("home.html"); ?>' > index.php
echo '{}' > composer.json

git add .
git commit -m 'Book'
git push heroku +HEAD:master
