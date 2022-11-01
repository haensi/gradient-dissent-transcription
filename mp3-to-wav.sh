for filename in mp3/*mp3; do
  echo $filename
  outputfile_wav=$(basename "$filename" .mp3).wav
  ffmpeg -i $filename -ar 16000 -ac 1 -c:a pcm_s16le ./wav/$outputfile_wav
done
