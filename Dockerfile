# This Dockerfile creates an debian image with avocado framework installed
#
# VERSION 0.1
MAINTAINER Dmitry Monakhov dmonakhov@openvz.org

FROM debian
ENV AVOCADO_VERSION 38.0

# Install and clean in one step to decrease image size
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
	fabric \
	gdebi-core \
	python-lzma \
	python-pip \
	python-pystache \
	python-setuptools \
	python-stevedore \
	python-yaml && \
    pip install avocado-framework aexpect && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* \
       /usr/share/doc /usr/share/doc-base \
       /usr/share/man /usr/share/locale /usr/share/zoneinfo

CMD avocado
