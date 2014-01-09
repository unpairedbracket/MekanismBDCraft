if [ "$*" = "" ]
then
    res=128
else
    res=$1
fi

(cd ./out/${res}/ && zip -r ../${res}x.zip ./assets/ > /dev/null; )
