FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update --yes && \
    apt-get upgrade --yes && \
    apt-get install --yes --no-install-recommends \ 
    build-essential python3.6 python3-pip python3-dev

RUN pip3 -q install pip --upgrade

RUN pip3 install jupyter
RUN mkdir /workspace
COPY homework_1_valeev.ipynb /workspace/homework_1_valeev.ipynb
WORKDIR /workspace
EXPOSE 8888

CMD ["jupyter", "notebook", "--port=8888", "--no-browser","--ip=0.0.0.0", "--allow-root", "--NotebookApp.token=''","--NotebookApp.password=''"]