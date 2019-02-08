#!/bin/bash

files=('config/*' 'files/RENEMDNCNjUtMkI2MC00NEE5LThFRTctMDc2MjMyN0IzOTVCCg==/*' 'files/NDA1OTY2MEUtQzFENy00NDM1LUFBREYtRjhBRDdFNzQ5NEQyCg==/*' 'tasks/NEQ1ODVBQUItQUJERi00ODg1LTkwNjktMjk1MzY5MUNBMEQ1Cg==.yml')
shopt -s dotglob
for i in "${files[@]}"; do
   ansible-vault $1 $i
done
shopt -u dotglob


# for filename in files/5jHPzxZfJG3FT3nC/*; do
#    [ -f "$filename" ] || continue
#    [ -e "$filename" ] || continue
#    [[ $filename == *.pub ]] && continue

#    name=${filename##*/}
#    newname=$(uuidgen | base64)

#    mv "files/5jHPzxZfJG3FT3nC/${name}" "files/5jHPzxZfJG3FT3nC/${newname}"
#    mv "files/5jHPzxZfJG3FT3nC/${name}.pub" "files/5jHPzxZfJG3FT3nC/.${newname}"

#    sed -i '' "s/${name}/${newname}/" config/KkWAyhdM9kUO9cKW.config.yml

# done