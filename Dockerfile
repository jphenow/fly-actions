FROM buildpack-deps:stretch-curl

LABEL version="2.0.0"
LABEL repository="https://github.com/jphenow/fly-actions"
LABEL homepage="https://github.com/jphenow/fly-actions"
LABEL maintainer="Jon Phenow <jon@jphenow.com>"

LABEL com.github.actions.name="GitHub Action for Fly.io"
LABEL com.github.actions.description="Wraps the fly CLI to enable common commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="purple"
COPY LICENSE README.md /

RUN curl https://get.fly.io/flyctl.sh | sh

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
