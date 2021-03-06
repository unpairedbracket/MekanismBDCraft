if [ "$1" = "" ]
then
    res=128
else
    res=$1
fi

zoom=`echo "scale=4; $res/512" | bc`
for vectorFile in `find ./svg -mindepth 3 -name *.svg`
do
    scaleName="`dirname $vectorFile`/.`basename $vectorFile`.scale"
    if [ -e "$scaleName" ]
    then
        fileZoom=`cat $scaleName`
    else
        fileZoom=$zoom
    fi
    bitmapFile=`echo $vectorFile | sed -e "s,/svg/\(.*\)\.svg,/out/${res}/\1\.png,"`
    mkdir -p `dirname $bitmapFile`
    rsvg-convert -o $bitmapFile --zoom=$fileZoom $vectorFile
    if echo $bitmapFile | grep -q items
    then
        convert $bitmapFile -channel Alpha -threshold 50% $bitmapFile
    fi
done
