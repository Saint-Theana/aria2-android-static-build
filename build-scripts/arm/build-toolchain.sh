mkdir /opt/NDK
cd /opt/NDK
apt install wget -y
wget https://dl.google.com/android/repository/android-ndk-r17-linux-x86_64.zip
apt install unzip -y
unzip https://dl.google.com/android/repository/android-ndk-r17-linux-x86_64.zip
    */build/tools/make_standalone_toolchain.py \
    --arch arm --api 27 --stl=libc++ \
    --install-dir /opt/toolchain --force
