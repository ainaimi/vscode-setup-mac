#!/bin/bash

pkglist=(
    ms-vsliveshare.vsliveshare
    reditorsupport.r
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done