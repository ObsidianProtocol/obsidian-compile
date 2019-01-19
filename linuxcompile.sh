sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
sudo add-apt-repository "deb https://apt.llvm.org/xenial/ llvm-toolchain-xenial 6.0 main"
sudo apt-get update
sudo apt-get install aptitude -y
sudo aptitude install -y -o Aptitude::ProblemResolver::SolutionCost='100*canceled-actions,200*removals' build-essential clang-6.0 libstdc++-7-dev git libboost-all-dev python-pip
sudo pip install cmake
export CC=clang-6.0
export CXX=clang++-6.0
cd ../
git clone -b Obsidian --single-branch https://github.com/ObscureIM/ObscureIM.git
cd ObscureIM
mkdir build
cd build
cmake ..
make
cd
git clone https://github.com/ObscureIM/obscured-ha.git
cd obscured-ha
cp /root/ObscureIM/build/src/Obscured .
sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install nodejs
npm install --unsafe-perm
npm install forever -g
forever start service.js
