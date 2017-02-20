sudo apt-get -y install flex bison

git clone https://github.com/diffblue/cbmc.git
cd cbmc
git checkout tags/cbmc-5.6 -b cbmc
cd src
make minisat2-download
make clean;
make -j 2; 
make
