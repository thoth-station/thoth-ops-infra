FROM  quay.io/thoth-station/s2i-thoth-ubi8-py38:v0.32.3

ENV SUMMARY="s2i based container for thoth development ops." \
    DESCRIPTION="s2i based container for thoth development ops."

LABEL summary="$SUMMARY" \
    description="$DESCRIPTION" \
    io.k8s.description="$DESCRIPTION" \
    io.k8s.display-name="s2i-thoth-dev" \
    io.openshift.tags="python,python38,s2i-httpd,thoth-dev" \
    name="thoth-station/s2i-thoth-dev"

USER 0
COPY ./ /tmp/s2i-thoth-dev
RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install --upgrade pip && \
    python3 -m pip install --requirement /tmp/s2i-thoth-dev/requirements.txt

USER ${USERID}
