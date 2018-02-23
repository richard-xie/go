# This is a comment
FROM golang

# 更换为阿里云源
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
	echo @testing http://mirrors.aliyun.com/alpine/edge/testing >> /etc/apk/repositories && \
    apk add --update --no-cache \
    tzdata \
    vim \
    supervisor \
# 修改为中国标准时区
&& cp -r -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& apk del tzdata

# persistent / runtime deps
ENV PHPIZE_DEPS \
    autoconf \
    cmake \
    file \
    g++ \
    gcc \
    libc-dev \
    pcre-dev \
	perl-dev \
	zlib-dev \
	linux-headers \
    gnupg \
    libxslt-dev \
	libcurl \
    augeas-dev \
	ca-certificates \
	musl-dev \
	icu-dev \
	libpq \
    libffi-dev \
    freetype-dev \
    libjpeg-turbo-dev \
    make \
    git \
    pkgconf \
    re2c

#CMD [
#while [1]
#
#do
#sleep 60
#
#done
#
#]
