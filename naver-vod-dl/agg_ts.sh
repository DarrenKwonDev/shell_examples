#!/bin/bash

path=$1
video_title=$2
url=$3
last_ts_number=$4

if [[ ! $last_ts_number =~ ^[0-9]+$ ]]; then
    echo "Invalid last_ts_number. Exiting..."
    exit 1
fi

# make directory if not exists
if [ ! -d "$path" ]; then
    mkdir "$path"
    echo "Folder '$path' created."
else
    echo "Folder '$path' already exists."
fi

# create curl target url
base_url=$(echo "$url" | pcregrep -o '.*(?=[0-9]{6}\.ts)')
lsu_sa_query_str=$(echo "$url" | pcregrep -o '(?<=\?).*')
curl_target_url="$base_url[000001-$last_ts_number].ts?$lsu_sa_query_str"

# download ts files
curl -o "./$path/#1.ts" "$curl_target_url"

# merge
ls "./$path"/00*.ts | sort | xargs cat >"./$path/$video_title.ts"

# remove ts files
rm "./$path"/00*.ts
