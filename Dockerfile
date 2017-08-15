FROM debian:latest

# inspired by http://kuehnast.com/s9y/archives/657-Manage-your-IKEA-TRDFRI-smart-lighting-system-with-Linux.html
RUN apt-get update -y && \
  apt-get install -y python python-pip git libtool autoconf automake build-essential && \
  git clone --recursive https://github.com/obgm/libcoap.git && \
  cd libcoap && \
  git checkout dtls && \
  git submodule update --init --recursive && \
  ./autogen.sh && \
  ./configure --disable-documentation --disable-shared && \
  make && \
  make install && \
  pip install tqdm && \
  cd && \
  git clone https://github.com/schliflo/ikea-smartlight.git
