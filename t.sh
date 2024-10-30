#!/bin/bash

list=$(git diff --name-only -r HEAD^1 HEAD)
for file in ${list[@]}; do
	if [[ "$file" != *"test_paths.yml" ]]; then
		echo "$file"
	fi
done