FROM google/cloud-sdk:317.0.0

WORKDIR /root/

# add repo tools
RUN apt-get update && \
    apt-get --yes install \
    wget=1.20.1-1.1 \
    zlib1g-dev=1:1.2.11.dfsg-1

# add non-repo tools
RUN wget -qO- https://github.com/biod/sambamba/releases/download/v0.6.8/sambamba-0.6.8-linux-static.gz | gunzip -c > sambamba \
    && chmod +x sambamba

# add script
COPY flagstat flagstat

# final preparations
RUN chmod +x flagstat

ENTRYPOINT ["./flagstat"]