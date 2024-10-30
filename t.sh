#!/bin/bash

for file in "$(git diff --name-only -r HEAD^1 HEAD)"; do
	if [ "$file" != *"test_paths.yaml" ]; then
		echo "$file"
	fi
done