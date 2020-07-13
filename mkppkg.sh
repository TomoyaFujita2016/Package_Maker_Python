#! /bin/bash
if [ "$1" = "" ]
then
    echo "[!] Please specify a package name."
    exit 1
fi

PACKAGE_NAME=$1

if [ -e ${PACKAGE_NAME} ]; then
    echo "[!] This directory already exists. (./${PACKAGE_NAME})"
    exit 1
fi

git clone https://github.com/TomoyaFujita2016/Python_Package_Sample _Python_Package_Sample
mv Python_Package_Sample/ ${PACKAGE_NAME}/

cd ${PACKAGE_NAME}
rm -rf .git/
mkdir -p "src/${PACKAGE_NAME}/" "examples/" "tests/"

echo "# ${PACKAGE_NAME}" > README.md
git init
git add .
git commit -m "1st commit"
