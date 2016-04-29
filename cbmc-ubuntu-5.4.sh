sudo apt-get -y install flex bison

git clone https://github.com/diffblue/cbmc.git
cd cbmc
git checkout tags/cbmc-5.4 -b downloaded-cbmc
cd src
make minisat2-download
make clean; make -j$(nproc); make
