if [ "$1" = "" ]
then
    res=128
else
    res=$1
fi

for pngLocation in `find ./png/$res -mindepth 3 -name *.png`
do
    newPng=`echo $pngLocation | sed -e "s,/png/\(.*\)\.png,/out/\1\.png,"`
    mkdir -p `dirname $newPng`
    cp "$pngLocation" "$newPng"
done
for pngLocation in `find ./png/any -mindepth 3 -name *.png`
do
    newPng=`echo $pngLocation | sed -e "s,/png/any/\(.*\)\.png,/out/${res}/\1\.png,"`
    mkdir -p `dirname $newPng`
    cp "$pngLocation" "$newPng"
done

