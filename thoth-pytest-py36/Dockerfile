FROM quay.io/thoth-station/s2i-thoth-ubi8-py36:v0.31.0

ENV SUMMARY="Thoth's toolchain for pytest." \
    DESCRIPTION="Thoth's toolchain for pytest."

LABEL summary="$SUMMARY" \
    description="$DESCRIPTION" \
    io.k8s.description="$DESCRIPTION" \
    io.k8s.display-name="Thoth Python 3.6-ubi8 pytest" \
    io.openshift.tags="python,python36,pytest" \
    name="thoth-station/thoth-pytest:ubi8" \
    version="0.14.3"

USER 0
COPY ./ /tmp/src-thoth-pytest
RUN pip install --upgrade pip
RUN pip install --requirement /tmp/src-thoth-pytest/requirements.txt

COPY root/bin /bin
RUN chmod 755 /bin/run-pytest
RUN chmod 755 /bin/run-mypy

USER ${USERID}
