WRK_DIR="."
VERSION_CONTROL="never"

echo "Formatting to the Linux Kernel Style Guide"

if [ $# -ne 0 ]
then
    for arg in $@
    do
	WRK_DIR=$arg
        echo "formatting" $WRK_DIR

        find $WRK_DIR -name "*.c" -o -name "*.h" | xargs indent -linux

        find . -name "*.c~" -o -name "*.h~" | xargs rm
    done
else
    echo "formatting" $WRK_DIR

    find $WRK_DIR -name "*.c" -o -name "*.h" | xargs indent -linux
    find . -name "*.c~" -o -name "*.h~" | xargs rm
fi
