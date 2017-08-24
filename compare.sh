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
#!/bin/bash

# Compare downloaded file size to the document size we had.

function abs_diff {
  res=$(($1 - $2));
  if [ $res -lt 0 ]; then
    res=$((-$res))
  fi
  echo $res
}

echo size_diff_percent: PERCENT_DIFF ID DIFF SIZE_DOWNLOADED SIZE
IFS=","
while read id kind url fs; do
  file1="tmp/${id}.content"
  if [ ! -f $file1 ]; then
    echo "Missing file $file1" >&2
    continue
  fi

  # Downloaded file size
  size1=$(wc -c <"$file1")
  # Document size we had
  size2=$fs
  absdiff=$(abs_diff $size1 $size2)
  if [ $absdiff -gt 0 ]; then
    echo size_diff_percent: `echo "$absdiff / $size2 * 100" | bc -l` $id $absdiff $size1 $size2
  fi
done < id_url.csv | sort -n -k2
