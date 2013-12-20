rm -rf python
unzip python_r-1.zip
mkdir extra_tmp
unzip ./python_extras_r-1.zip -d extra_tmp
mv extra_tmp/python/* ./python/lib/python2.6/
rm -rf extra_tmp


adb push ./python/ /data/python/
adb remount
adb push python.sh /system/bin/python
adb shell chmod 777 /system/bin/python
