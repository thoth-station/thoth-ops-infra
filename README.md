# Thoth's Ops Infrastructure

This project is used for maintaining the collection of thoth-ops infra images.

## Python 3.6 Toolchain

This container image could be used by a human, or some CI like Jenkins or Zuul to run linters, and provers...

```shell
cd thoth-python36
buildah build-using-dockerfile --tag thoth-python-36:latest .
gopass show aicoe/thoth/quay.io/robot-users # get the credentials
sudo skopeo copy containers-storage:localhost/thoth-python-36:latest docker://quay.io/aicoe/thoth-python36:v0.5.0 --dest-creds aicoe+ptah:<password>
```

### Thoth Ops Infra Images

The _Status_ indicates if Thoth Station is keeping the image current and up-to-date or if it is considered deprecated.

Thoth-Ops Images       | Status     | Image Link/Status
---------------------- | ---------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
s2i-jupyterbook        | current    | [![Docker Repository on Quay](https://quay.io/repository/thoth-station/s2i-jupyterbook/status "Docker Repository on Quay")](https://quay.io/repository/thoth-station/s2i-jupyterbook)
s2i-thoth-dev          | current    | [![Docker Repository on Quay](https://quay.io/repository/thoth-station/s2i-thoth-dev/status "Docker Repository on Quay")](https://quay.io/repository/thoth-station/s2i-thoth-dev)
thoth-pipeline-github  | current    |
thoth-precommit-py38   | current    | [![Docker Repository on Quay](https://quay.io/repository/thoth-station/thoth-precommit-py38/status "Docker Repository on Quay")](https://quay.io/repository/thoth-station/thoth-precommit-py38)
thoth-precommit-py36   | current    | [![Docker Repository on Quay](https://quay.io/repository/thoth-station/thoth-precommit/status "Docker Repository on Quay")](https://quay.io/repository/thoth-station/thoth-precommit)
thoth-pytest-py38      | current    | [![Docker Repository on Quay](https://quay.io/repository/thoth-station/thoth-pytest-py38/status "Docker Repository on Quay")](https://quay.io/repository/thoth-station/thoth-pytest-py38)
thoth-pytest-py36      | current    | [![Docker Repository on Quay](https://quay.io/repository/thoth-station/thoth-pytest/status "Docker Repository on Quay")](https://quay.io/repository/thoth-station/thoth-pytest)
thoth-pylint-ubi8      | current    | [![Docker Repository on Quay](https://quay.io/repository/thoth-station/thoth-pylint/status "Docker Repository on Quay")](https://quay.io/repository/thoth-station/thoth-pylint)
thoth-pytest-ubi8-py38 | deprecated | [![Docker Repository on Quay](https://quay.io/repository/thoth-station/thoth-pytest-ubi8-py38/status "Docker Repository on Quay")](https://quay.io/repository/thoth-station/thoth-pytest-ubi8-py38)
thoth-mypy-ubi8        | deprecated | [![Docker Repository on Quay](https://quay.io/repository/thoth-station/thoth-mypi/status "Docker Repository on Quay")](https://quay.io/repository/thoth-station/thoth-mypi)
thoth-pytest-f31-py37  | deprecated | [![Docker Repository on Quay](https://quay.io/repository/thoth-station/thoth-pytest-f31-py37/status "Docker Repository on Quay")](https://quay.io/repository/thoth-station/thoth-pytest-f31-py37)
thoth-black-ubi8       | deprecated | [![Docker Repository on Quay](https://quay.io/repository/thoth-station/thoth-black/status "Docker Repository on Quay")](https://quay.io/repository/thoth-station/thoth-black)
thoth-coala-ubi8       | deprecated | [![Docker Repository on Quay](https://quay.io/repository/thoth-station/thoth-coala/status "Docker Repository on Quay")](https://quay.io/repository/thoth-station/thoth-coala)
thoth-src              | deprecated | [![Docker Repository on Quay](https://quay.io/repository/thoth-station/thoth-srcops/status "Docker Repository on Quay")](https://quay.io/repository/thoth-station/thoth-srcops)
