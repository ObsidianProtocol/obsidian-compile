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
git clone -b obisdian-premine --single-branch https://github.com/ObsidianProtocol/obsidian.git
cd obsidian
mkdir build
cd build
cmake ..
make
cd
git clone https://github.com/ObsidianProtocol/obsidiand-ha.git
cd obsidiand-ha
cp /root/obsidian/build/src/Obsidiand .
npm install
npm install forever -g
forever node service.js
