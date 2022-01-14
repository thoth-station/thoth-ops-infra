FROM quay.io/thoth-station/s2i-thoth-ubi8-py38:v0.32.0


ENV SUMMARY="Thoth's toolchain for running pre-commit hooks." \
    DESCRIPTION="Thoth's toolchain for running pre-commit hooks."

LABEL summary="$SUMMARY" \
    description="$DESCRIPTION" \
    io.k8s.description="$DESCRIPTION" \
    io.k8s.display-name="Thoth Python 3.8-ubi8 Pre-Commit" \
    io.openshift.tags="python,python38,pre-commit" \
    name="thoth-station/thoth-pre-commit:ubi8" \
    version="0.14.0"

USER 0
COPY ./ /tmp/src-thoth-precommit
RUN  \
  pip install --upgrade pip &&\
  /usr/bin/python3 -m pip install --upgrade pip &&\
  /usr/bin/python3 -m pip install --requirement /tmp/src-thoth-precommit/requirements.txt

ARG OPA_VERSION="0.31.0"
ARG CONFTEST_VERSION="0.21.0"
RUN \
    curl -L https://github.com/open-policy-agent/conftest/releases/download/v${CONFTEST_VERSION}/conftest_${CONFTEST_VERSION}_Linux_x86_64.tar.gz | tar -xzf - -C /usr/local/bin && \
    curl -o /usr/local/bin/opa -L https://github.com/open-policy-agent/opa/releases/download/v${OPA_VERSION}/opa_linux_amd64_static && \
    chmod +x /usr/local/bin/opa /usr/local/bin/conftest


USER ${USERID}
