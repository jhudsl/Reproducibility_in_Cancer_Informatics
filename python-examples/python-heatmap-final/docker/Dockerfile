FROM jupyter/datascience-notebook:python-3.9.6
LABEL maintainer="cansav09@gmail.com"

USER root

RUN pip3 install \
  "pyrefinebio"

USER ${NB_UID}
