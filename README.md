# Thoth's Ops Infrastructure

This project is used for maintaining the collection of thoth-ops infra images.

## Python Toolchain

This container image could be used by a human, or some CI like Jenkins or Zuul to run linters, and provers...

```shell
cd thoth-python36
buildah build-using-dockerfile --tag thoth-python-36:latest .
gopass show aicoe/thoth/quay.io/robot-users # get the credentials
sudo skopeo copy containers-storage:localhost/thoth-python-36:latest docker://quay.io/aicoe/thoth-python36:v0.5.0 --dest-creds aicoe+ptah:<password>
```

### Thoth Ops Infra Images

The _Status_ indicates if Thoth Station is keeping the image current and up-to-date or if it is considered deprecated.

| Thoth-Ops Images       | Status     | Image Link/Status                                                                                                                                                                                   |
| ---------------------- | ---------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| s2i-thoth-dev          | current    | [![Docker Repository on Quay](https://quay.io/repository/thoth-station/s2i-thoth-dev/status "Docker Repository on Quay")](https://quay.io/repository/thoth-station/s2i-thoth-dev)                   |
| twine                  | current    | [![Docker Repository on Quay](https://quay.io/repository/thoth-station/twine/status "Docker Repository on Quay")](https://quay.io/repository/thoth-station/twine)                                   |
| thoth-pipeline-github  | current    |
| thoth-precommit-py39   | current    | [![Docker Repository on Quay](https://quay.io/repository/thoth-station/thoth-precommit-py39/status "Docker Repository on Quay")](https://quay.io/repository/thoth-station/thoth-precommit-py39)     |
| thoth-precommit-py38   | current    | [![Docker Repository on Quay](https://quay.io/repository/thoth-station/thoth-precommit-py38/status "Docker Repository on Quay")](https://quay.io/repository/thoth-station/thoth-precommit-py38)     |
| thoth-pytest-py38      | current    | [![Docker Repository on Quay](https://quay.io/repository/thoth-station/thoth-pytest-py38/status "Docker Repository on Quay")](https://quay.io/repository/thoth-station/thoth-pytest-py38)           |
| thoth-pylint-ubi8      | current    | [![Docker Repository on Quay](https://quay.io/repository/thoth-station/thoth-pylint/status "Docker Repository on Quay")](https://quay.io/repository/thoth-station/thoth-pylint)                     |
