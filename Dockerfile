FROM nvcr.io/nvidia/deepstream:6.0-triton

LABEL mantainer="wangduan  <wangduan023@gmail.com>"

WORKDIR /opt/build

ENV OPENCV_VERSION="4.6.0"

ENV FFMPEG_VERSION="4.6.0"
#RUN export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890
RUN apt-get -qq install -y unzip 
RUN wget -O opencv.zip https://github.com/opencv/opencv/archive/${OPENCV_VERSION}.zip 
RUN unzip -qq opencv.zip -d /opt/opencv 
RUN wget -O opencv_contrib.zip https://github.com/opencv/opencv/opencv_contrib/archive/${OPENCV_VERSION}.zip
RUN unzip -qq opencv_contrib.zip -d /opt/opencv 
