wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key|sudo apt-key add -
apt-add-repository 'deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-8 main'
wget http://archive.ubuntu.com/ubuntu/pool/universe/s/spdlog/libspdlog-dev_1.3.1-1_amd64.deb
dpkg -i libspdlog-dev_1.3.1-1_amd64.deb
apt-get update
apt-get install -y clang-8 libclang-8-dev clang-8 clang-tools-8 clang-8-doc \
	libclang-common-8-dev libclang-8-dev libclang1-8 clang-format-8 \
	python-clang-8 libllvm-8-ocaml-dev libllvm8 llvm-8 llvm-8-dev \
	llvm-8-doc llvm-8-examples llvm-8-runtime lldb-8 lld-8 nlohmann-json-dev \
	cmake
