###############################################################
# Dockerfile to build container images for Polyester
# Based on r-base 3.6.3
###############################################################

FROM r-base:3.6.3

# File Author / Maintainer
LABEL maintainer="Naoto Kubota <naotok@ucr.edu>"

# Install dependencies
RUN apt-get update && \
    apt-get install -y less vim libcurl4-openssl-dev libssl-dev

# install Polyester
RUN R -e 'install.packages("BiocManager")' && \
    R -e 'BiocManager::install("polyester")' && \
    R -e 'BiocManager::install("ballgown")'

# Launch R
CMD ["R"]
