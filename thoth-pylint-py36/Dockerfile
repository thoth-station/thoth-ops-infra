FROM quay.io/thoth-station/s2i-thoth-ubi8-py36:v0.31.0

ENV SUMMARY="Thoth's toolchain for Pylint." \
    DESCRIPTION="Thoth's toolchain for Pylint."

LABEL summary="$SUMMARY" \
      description="$DESCRIPTION" \
      io.k8s.description="$DESCRIPTION" \
      io.k8s.display-name="Thoth Python 3.6-ubi8 Pylint" \
      io.openshift.tags="python,python36,pylint" \
      name="thoth-station/thoth-pylint:ubi8" \
      version="0.14.3"

USER 0
COPY ./ /tmp/src-thoth-pylint
RUN  \
  pip install --upgrade pip &&\
  pip install --requirement /tmp/src-thoth-pylint/requirements.txt

USER ${USERID}
