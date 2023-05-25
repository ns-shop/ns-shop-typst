# linux
rm -rf typst-x86_64-unknown-linux-musl.tar.xz typst-x86_64-unknown-linux-musl
wget https://github.com/typst/typst/releases/latest/download/typst-x86_64-unknown-linux-musl.tar.xz
tar -xf typst-x86_64-unknown-linux-musl.tar.xz
mv typst-x86_64-unknown-linux-musl/typst .
rm -rf typst-x86_64-unknown-linux-musl.tar.xz typst-x86_64-unknown-linux-musl

# windows
rm -rf typst-x86_64-pc-windows-msvc.zip typst-x86_64-pc-windows-msvc
wget https://github.com/typst/typst/releases/latest/download/typst-x86_64-pc-windows-msvc.zip
unzip typst-x86_64-pc-windows-msvc
mv typst-x86_64-pc-windows-msvc/typst.exe .
rm -rf typst-x86_64-pc-windows-msvc.zip typst-x86_64-pc-windows-msvc