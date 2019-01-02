#!/bin/bash
# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Downloads stories based on URLs in documents.csv into the tmp/ directory.

base=$(dirname "$0")

mkdir -p ${base}/tmp
cat ${base}/documents.csv | cut -d',' -f 1,3,4,5 | tail -n 1572 > ${base}/id_url.csv

IFS=","
while read id kind url fs; do
  echo $id
  file="${base}/tmp/${id}.content"
  if [ ! -f $file ]; then
    size="0"
  else
    size=$(wc -c <"$file")
  fi

  # The following attempts a re-download if the file doesn't exit or is too
  # small.
  if [ ! -f $file -o $size -le 19000 ]; then
    rm -f "$file"
    if [ $kind == "gutenberg" ]; then
      sleep 2
    fi
    wget -nc -O $file -o ${base}/tmp/${id}.log "$url"
  fi
  # Some Gutenberg files are downloaded as gzipped text.
  type="$(file -b $file)"
  if [[ $type == *"gzip compressed"* ]]; then
    echo "compressed"
    mv $file "${file}.gz"
    gunzip "${file}.gz"
  fi
done < ${base}/id_url.csv
