#!/bin/bash
#To install the following tools:
#seqtk
#eGSA
#BCR
#eGap

INTMEM=4096

mkdir Preprocessing
cd ./Preprocessing

echo -e "\n****Dowloading seqtk...\n"
git clone https://github.com/lh3/seqtk.git;
cd seqtk
echo -e "\n****Compiling seqtk...\n"
make

cd ..
echo -e "\n****Dowloading eGSA...\n"
git clone https://github.com/felipelouza/egsa
cd egsa
echo -e "\n****Compiling eGSA with MEMLIMIT="$INTMEM"...\n"
make compile BWT=1 MEMLIMIT=$INTMEM

cd ..
echo -e "\n****Dowloading BCR...\n"
git clone https://github.com/giovannarosone/BCR\_LCP\_GSA
cd BCR\_LCP\_GSA
echo -e "\n****Compiling BCR...\n"
make DA=1

cd ..
echo -e "\n****Dowloading eGAP...\n"
git clone https://github.com/felipelouza/egap.git
cd egap
echo -e "\n****Compiling eGap...\n"
make

echo -e "\nDone."

