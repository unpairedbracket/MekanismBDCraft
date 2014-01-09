if [ "$1" = "" ]
then
    res=128
else
    res=$1
fi

for mcMeta in `find ./svg -mindepth 3 -name *.mcmeta`
do
    newMeta=`echo $mcMeta | sed -e "s,/svg/\(.*\)\.mcmeta,/out/${res}/\1\.mcmeta,"`
    mkdir -p `dirname $newMeta`
    cp "$mcMeta" "$newMeta"
done

