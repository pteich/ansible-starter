#!/bin/sh
if [[ ! -n $1 ]]; then
    echo no init
    return
fi
mkdir -p roles/${1}/{defaults,tasks,files,templates,vars,handlers,meta}
for i in defaults tasks vars handlers meta; do
    if [[ ! -f roles/${1}/${i}/main.yaml ]]; then
    echo creating file:  roles/${1}/${i}/main.yaml
    echo "---
# Default Ansible YAML
...
" > roles/${1}/${i}/main.yaml
    else
        echo roles/${1}/${i}/main.yaml exists skipping
    fi
done