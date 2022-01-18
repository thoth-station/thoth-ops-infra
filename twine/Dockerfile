FROM  quay.io/thoth-station/s2i-thoth-ubi8-py38:v0.32.3

ENV SUMMARY="Thoth's Source-to-Image for Python 3.8 twine." \
    DESCRIPTION="Thoth's Source-to-Image for Python 3.8 twine. This toolchain is based on Red Hat UBI8."

LABEL summary="$SUMMARY" \
    description="$DESCRIPTION" \
    io.k8s.description="$DESCRIPTION" \
    io.k8s.display-name="twine" \
    io.openshift.tags="python,python38" \
    name="thoth-station/twine" \
    version="0.14.4"

USER 0
COPY ./ /tmp/twine
RUN pip install --upgrade pip && \
    pushd /tmp/twine && \
    micropipenv install --dev && \
    popd

USER ${USERID}
