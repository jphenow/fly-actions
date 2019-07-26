FROM debian:stretch-slim

LABEL version="1.0.0"
LABEL repository="https://github.com/jphenow/fly-actions"
LABEL homepage="https://github.com/jphenow/fly-actions"
LABEL maintainer="Jon Phenow <jon@jphenow.com>"

LABEL com.github.actions.name="GitHub Action for Fly.io"
LABEL com.github.actions.description="Wraps the fly CLI to enable common commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="purple"
COPY LICENSE README.md /

WORKDIR /

RUN  apt-get update \
    && apt-get install -y wget tar \
    && rm -rf /var/lib/apt/lists/*
RUN wget -q https://get.fly.io/tarballs/stable/fly-v0.54.2/fly-v0.54.2-linux-x64.tar.gz && \
    tar -xvf fly-v0.54.2-linux-x64.tar.gz
ENV PATH="/fly/bin:${PATH}"

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
