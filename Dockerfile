FROM ubuntu:18.04

LABEL author="felipederodrigues"

RUN apt-get update && apt-get install -y software-properties-common 
RUN add-apt-repository -y ppa:alex-p/tesseract-ocr
RUN add-apt-repository -y ppa:deadsnakes/ppa
RUN apt-get update && apt-get install -y tesseract-ocr-eng python3.7 python-pip

WORKDIR /
ADD tessdata.tar .
ENV TESSDATA_PREFIX=/tessdata/

CMD ["bash"]
