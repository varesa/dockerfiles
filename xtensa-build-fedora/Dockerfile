FROM fedora

RUN dnf install -y --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

RUN dnf install -y autoconf automake \
	bison bzip2 \
	expat-devel \
	flex file \
	gawk gcc gcc-c++ gperf git \
	libtool \
	make \
	ncurses-devel \
	patch pyserial \
	texinfo \
	unrar unzip \
	wget which
	
RUN useradd build
USER build

WORKDIR /home/build
RUN git clone --recursive https://github.com/pfalcon/esp-open-sdk.git
WORKDIR esp-open-sdk
RUN make
