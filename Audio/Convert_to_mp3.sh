#!/bin/bash -
# wav2mp3

FILES=`find . -name "*.wav" -type f | sed 's/ \+/@/g'`

for i in $FILES; do
OUT=`echo "$i" | sed -e 's/.wav//' | tr -s '@' ' ' `
echo $OUT
lame -h -b 320 "./$OUT.wav" "$OUT.mp3"
done

