#!/bin/bash

echo "  ********************************"
echo "  ********************************"
echo "  MKOLONI PHP PROJECT CREATOR"
echo "  ********************************"
echo "  ********************************"
echo -n "  Enter the name of the project: "
read project_name

mkdir $project_name

cd $project_name

date
echo "  Creating a new php project .... "
echo "  Creating the following files :"
echo "             index.php"
echo "             pages ->"
echo "                    index.php"
echo "                    README.md"
echo "             db ->"
echo "                    database.php"
echo "                    README.md"
echo "             users"
echo "             includes ->"
echo "                    head-content.php"
echo "                    README.md"
echo "             admin"
echo "                    README.md"
echo "             assets ->"
echo "                    images"
echo "                    videos"
echo "                    README.md"
echo "             js ->"
echo "                    app.js"
echo "                    README.md"
echo "             css ->"
echo "                    app.css"
echo "                    README.md"
echo "             README.md"

echo "  Use a css preporocessor project"
echo -n " Yes or No(y,n): "
read use_sass

if [ "$use_sass" == "y" ]; then
  echo "  Choose your css preprocessor"
  echo "          1. SASS"
  echo "          2. SCSS"
  echo "          3. LESS"
  echo "          4. STYLUS"
  echo "          5. Post CSS"

  echo -n " : "
  read css_preprocessor

  if [ "$css_preprocessor" == "1" ]; then
    mkdir sass
    cd sass
    touch app.sass
    cd ..
  fi

  if [ "$css_preprocessor" == "2" ]; then
    mkdir scss
    cd scss
    touch app.scss
    cd ..
  fi


  if [ "$css_preprocessor" == "3" ]; then
    mkdir less
    cd less
    touch app.less
    cd ..
  fi


  if [ "$css_preprocessor" == "4" ]; then
    mkdir stylus
    cd stylus
    touch app.stylus
    cd ..
  fi


  if [ "$css_preprocessor" == "5" ]; then
    mkdir post_css
    cd post_css
    touch app.css
    cd ..
  fi
else
  echo Skipping css preprocessor support
fi

echo "  Add typescript to project"
echo -n " Yes or no(y,n): "
read use_typescript

if [ "$use_typescript" == "y" ]
then
  echo "  Creating typescript folder"
  mkdir typescript
  cd typescript
  touch app.ts
  cd ..
else
  echo "  Skipping typescript"
fi

echo "  Add icons directory"
echo -n " yes or no(y,n): "
read add_icons_folder

if [ "$add_icons_folder" == "y" ]
then
  echo "  Adding icons folder"
else
  echo "  Skipping icons folders"
fi

mkdir includes pages db users admin assets js css

touch index.php README.md

cd pages

touch index.php README.md

cd ..

cd admin

touch README.md

cd ..

cd includes

touch head-content.php README.md

cd ..

cd users

touch README.md

cd ..

cd db

touch database.php README.md

cd ..

cd assets

mkdir images videos

touch README.md

cd ..

cd js

touch app.js README.md

cd ..

cd css

touch app.css README.md

cd ..

echo "  Process finished"
echo "  Created $project_name folder"
echo "  Type"
echo " "
echo "          cd $project_name"
echo ""
echo ""

