echo "Cloning Hlsdk into your storage..."
cd ~/
git clone https://github.com/FWGS/hlsdk-xash3d --depth=1
cd hlsdk-xash3d
echo "Building Hlsdk..."
mkdir -p build && cd build
CFLAGS="-U__ANDROID__" cmake -D64BIT=yes ../
make -j$(nproc)
mkdir -p ~/xash/valve/dlls/
cp dlls/libserver_arm64.so ~/xash/valve/dlls/hl.so
echo "Done!"
