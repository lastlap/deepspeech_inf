FROM ubuntu:18.04

COPY ./* /deepspeech_inf/


RUN apt-get update && apt-get install -y --no-install-recommends \
	apt-utils \
	build-essential

RUN apt-get install -y --no-install-recommends \
	python3 \
	python3-dev \
	python3-setuptools \
	libssl-dev \
	libffi-dev \
	libxml2-dev \
	libxslt1-dev \
	zlib1g-dev \
	python3-pip

RUN apt-get install -y --no-install-recommends portaudio19-dev

RUN apt-get install -y --no-install-recommends python3-pyaudio

WORKDIR /deepspeech_inf

RUN pip3 install wheel
RUN pip3 install -r requirements.txt

