FROM python:3
USER root
WORKDIR /usr/src/app
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install --no-install-recommends -y \
    curl \
    sudo \
    vim \
    git && \
    apt-get clean
RUN python -m pip install --upgrade pip && pip install \
    numpy \
    scipy \
    matplotlib \
    ipython \
    scikit-learn \
    pandas \
    pillow \
    mglearn \
    requests \
    pyperclip \
    beautifulsoup4　\
    jupyterlab

RUN jupyter serverextension enable --py jupyterlab
ENV DEBIAN_FRONTEND dialog