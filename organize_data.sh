#!/usr/bin/env bash

data_dir=Problem1/electron_scattering_data
regex='index_([0-9]+)\.bin'

cd $data_dir
mkdir -p even odd
for file in *; do
	if [[ $file =~ $regex ]]; then
		index="${BASH_REMATCH[1]}"
		if [[ $((index % 2)) -eq 0 ]]; then
			mv $file even
		else
			mv $file odd
		fi
	fi
done
