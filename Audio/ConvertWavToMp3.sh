pwd=$(pwd)
cd $pwd

find . -name "*.wav" |while read f
do
  mkdir -p "../MyAlbums-mp3/$(dirname "$f")"
  ffmpeg -i "$f" -acodec libmp3lame -ab 320k "../MyAlbums-mp3/${f%%}.mp3"
done
