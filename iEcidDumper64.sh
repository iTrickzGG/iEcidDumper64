#!/bin/bash
clear
echo "=============================================================================="
echo "                ECID Dumper For 64BIT iDevices"
echo "               Copyright @iTrickzGG 2017"
echo "=============================================================================="
echo "OPTIONS:"
echo "[1] About/Supported iDevices"
echo "[2] Dump"
read SELECT
if [ $SELECT = "1" ]
then
echo "This Tool, Created By iTrickzGG, Is To Be Used To Dump The ECID#
      Of A Jailbroken arm64 iDevice"
echo "iDevice Support Includes..
      iPhone 5S [6,1/6,2]
      iPhone 6/S/+ [7,1/7,2/8,1/8,2]
      iPhone 7/+ [9,1/9,2/9,3/9,4]
      iPad Air [4,1/4,2/4,3]
      iPad Air 2 [5,3/5,4]
      iPad Pro 12.9-inch [6,7/6,8]
      iPad Pro 9.7-inch [6,3/6,4]
      iPad 5 [6,11/6,12]
      iPad Pro 12.9-inch 2 [7,1/7.2]
      iPad Pro 10.5-inch [7,3/7,4]
      iPad Mini 2 [4,4/4,5/4,6]
      iPad Mini 3 [4,7/4,8/4,9]
      iPad Mini 4 [5,1/5,2]
      iPod Touch 6 [7,1]
This Tool Is Provided As-Is With No Warranty
Use At Your Own Risk
*This Tool Is Safe To Use And Has Been Tested"
elif [ $SELECT = "2" ]
then
if [[ $(uname -p) = *arm64* ]]
then
echo "arm64 iDevice Detected!"
echo "Dumping ECID#"
cd /System/Library/Caches
openssl asn1parse -inform DER -in apticket.der | grep -A1 ECID | tail -n +1
cd /var/mobile
echo "Thanks! Have A Great Day!"
else
echo "INVALID!"
echo "Device Detected Is NOT An arm64 iDevice"
echo "Please Refer To Option 1 For iDevice Support.."
fi
fi