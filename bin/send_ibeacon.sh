#/bin/bash

sudo hciconfig hci0 leadv 0
#tm=`date "+%s"|od -t x1|awk '{$1="";printf("%s",$0)}'`
#tm=`date "+%s"|od -t x1|awk '{$1="";printf("%s",$0)}'|awk '{printf("%s 00 00 00 00 00",$0)}'`
#tm=`echo "hello world"|od -t x1|awk '{$1="";printf("%s",$0)}'`
uuid=`cat /home/pi/bin/uuid.txt`
#uuid=`echo "B9407F30-F5F8-466E-AFF9-25556B57FE6D"|tr -d '-'|sed 's/\(..\)/\1 /g'`
echo $uuid
#sudo hcitool -i hci0 cmd 0x08 0x0008 1E 02 01 1A 1A FF 4C 00 02 15 63 6F 3F 8F 64 91 4B EE 95 F7 D8 CC 64 A8 63 B5 00 00 00 00 C8 00$tm
sudo hcitool -i hci0 cmd 0x08 0x0008 1e 02 01 1a 1a ff 4c 00 02 15 $uuid 00 00 00 00 c8 00 
#sudo hcitool -i hci0 cmd 0x08 0x0008 1e 02 01 1a 1a ff 4c 00 02 15 $uuid 00 00 00 00 c5 00 68 65 6c 6c 6f 20 77 6f 72 6c 64 0a
#sudo hcitool -i hci0 cmd 0x08 0x0008 1e 02 01 1a 1a ff 4c 00 02 15 e2 c5 6d b5 df fb 48 d2 b0 60 d0 f5 a7 10 96 e0 00 00 00 00 c5 00

