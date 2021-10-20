FROM  quay.io/thoth-station/s3i-thoth-ubi8-py38:v0.32.1

ENV SUMMARY="s2i based container for jupyterbook build." \
    DESCRIPTION="s2i based container for jupyterbook build."

LABEL summary="$SUMMARY" \
    description="$DESCRIPTION" \
    io.k8s.description="$DESCRIPTION" \
    io.k8s.display-name="s2i-jupyterbook" \
    io.openshift.tags="python,python38,s2i-httpd,jupyterbook" \
    name="thoth-station/s2i-jupyterbook" \
    version="0.14.0"

USER 0
COPY ./ /tmp/s2i-jupyterbook
RUN pip install --upgrade pip && \
    /usr/bin/python3 -m pip install --upgrade pip && \
    /usr/bin/python3 -m pip install --requirement /tmp/s2i-jupyterbook/requirements.txt

USER ${USERID}
