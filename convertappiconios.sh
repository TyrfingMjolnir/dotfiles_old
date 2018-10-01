#!/usr/bin/env bash

echo ${1%.*}

/bin/mkdir ${1%.*}

/usr/local/bin/convert $1 -resize '1024x1024' ${1%.*}/app_1024x1024.png
/usr/local/bin/convert $1 -resize   '180x180' ${1%.*}/app_0180x0180.png
/usr/local/bin/convert $1 -resize   '167x167' ${1%.*}/app_0167x0167.png
/usr/local/bin/convert $1 -resize   '152x152' ${1%.*}/app_0152x0152.png
/usr/local/bin/convert $1 -resize   '120x120' ${1%.*}/app_0120x0120.png
/usr/local/bin/convert $1 -resize     '87x87' ${1%.*}/app_0087x0087.png
/usr/local/bin/convert $1 -resize     '80x80' ${1%.*}/app_0080x0080.png
/usr/local/bin/convert $1 -resize     '76x76' ${1%.*}/app_0076x0076.png
/usr/local/bin/convert $1 -resize     '60x60' ${1%.*}/app_0060x0060.png
/usr/local/bin/convert $1 -resize     '58x58' ${1%.*}/app_0058x0058.png
/usr/local/bin/convert $1 -resize     '40x40' ${1%.*}/app_0040x0040.png
/usr/local/bin/convert $1 -resize     '29x29' ${1%.*}/app_0029x0029.png
/usr/local/bin/convert $1 -resize     '20x20' ${1%.*}/app_0020x0020.png
