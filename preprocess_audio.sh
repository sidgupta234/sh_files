mkdir mono
for k in *.wav; do ffmpeg -i $k -ac 1 mono/$k;done #converting files from multi channel to mono channel
mkdir mono_16kz
cd mono
for k in *; do ffmpeg -i $k -ar 16000 ../mono_16kz/$k;done #converting n sample rate to 16KhZ
