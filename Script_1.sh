cd ~
echo "Installing and updating programs..."
apt update
apt install git
apt install cmake
termux-setup-storage
echo "Cloning Xash sources into your storage..."
mkdir -p ~/xash
cp -r ~/storage/shared/xash/valve ~/xash/
git clone https://github.com/FWGS/xash3d --depth=1
cd xash3d/engine
CFLAGS="-U__ANDROID__" make -f ../contrib/mittorn/Makefile.linux XASH_DEDICATED=1 64BIT=1
cp xash ~/xash/
echo "Done!"
ls ~/xash
