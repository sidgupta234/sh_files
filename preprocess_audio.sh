cd $1
mkdir wav
for k in *; do ffmpeg -i $k wav/$k.wav;done
mkdir mono
cd wav
for k in *.wav; do ffmpeg -i $k -ac 1 ../mono/$k;done #converting files from multi channel to mono channel
cd ..
mkdir mono_16kz
cd mono
for k in *; do ffmpeg -i $k -ar 16000 ../mono_16kz/$k;done #converting n sample rate to 16KhZ
