FROM vibpsb/i-adhore

MAINTAINER Cecilia Sensalari

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -yq install python3-pip python3-tk git curl \
	default-jdk build-essential mcl ncbi-blast+ muscle mafft prank fasttree phyml paml
ADD /requirements.txt /install/requirements.txt
ADD /setup.py /install/setup.py
ADD /ksrates /install/ksrates
ADD /wgd /install/wgd
ADD /README.md /install/README.md
ADD /ksrates_cli.py /install/ksrates_cli.py

RUN python3 -m pip install /install