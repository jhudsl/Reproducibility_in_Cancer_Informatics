FROM rocker/tidyverse:4.0.2
LABEL maintainer="cansav09@gmail.com"
WORKDIR /rocker-build/

# Commonly used R packages
RUN Rscript -e  "install.packages( \
    c('DESEq2',
      'pheatmap'))"

# Set final workdir for commands
WORKDIR /home/rstudio
