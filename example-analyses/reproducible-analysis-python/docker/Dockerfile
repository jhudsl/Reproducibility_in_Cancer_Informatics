FROM jupyter/datascience-notebook:
LABEL maintainer="cansav09@gmail.com"
WORKDIR /rocker-build/

# Install pip3 and installation tools
RUN apt-get -y --no-install-recommends install \
    python3-pip  python3-dev

# Set final workdir for commands
WORKDIR /home/rstudio
