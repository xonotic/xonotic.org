# forked from publysher/hugo
FROM debian:wheezy
MAINTAINER z@xnz.me

# Install pygments (for syntax highlighting)
RUN apt-get -qq update \
    && DEBIAN_FRONTEND=noninteractive apt-get -qq install -y --no-install-recommends python-pygments git ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Download and install hugo
ENV HUGO_VERSION 0.16
ENV HUGO_BINARY hugo_${HUGO_VERSION}-1_amd64.deb

ADD https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY} /tmp/hugo.deb
RUN dpkg -i /tmp/hugo.deb \
    && rm /tmp/hugo.deb

# Create working directory
RUN mkdir /usr/share/blog
WORKDIR /usr/share/blog

# Expose default hugo port
EXPOSE 1313

# By default, serve site
ENV HUGO_BASE_URL http://localhost:1313
CMD hugo server -b ${HUGO_BASE_URL} --bind=0.0.0.0