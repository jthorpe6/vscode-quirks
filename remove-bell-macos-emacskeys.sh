#!/bin/bash
# https://stackoverflow.com/a/57651703

if [ "$(uname)"  == "Darwin" ]
then
    if [ ! -d "/Applications/Visual Studio Code.app" ]
    then
        echo -e "[!] vscode not found"
        exit
    fi
    if [ ! -d "${HOME}/Library/KeyBindings/" ]
    then
        mkdir -p "${HOME}/Library/KeyBindings/"
    fi
    if [ ! -f "${HOME}/Library/KeyBindings/DefaultKeyBinding.dict" ]
    then
cat <<EOF > "${HOME}/Library/KeyBindings/DefaultKeyBinding.dict"
{
    "^/" = "noop:";
    "@^\UF701" = "noop:";
    "@^\UF702" = "noop:";
    "@^\UF703" = "noop:";
}
EOF
    fi
fi