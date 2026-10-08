# Upstream's deployments/Dockerfile with these changes: the app is copied from app/app/
# (upstream's build context is the app folder); and mitmproxy is pinned to 5.3.0, the version
# upstream's unpinned install resolved to on Ubuntu 18.04's Python 3.6 and the one the lab is
# about (CVE-2021-39214; app/block.py also uses its API). The other packages stay unpinned, as
# upstream: no newer release of them supports Python 3.6, so they resolve to the same versions
# (Flask 1.1.4, gunicorn 21.2.0, gevent 22.10.2, requests 2.27.1).
FROM docker.io/library/ubuntu:18.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends curl python3-pip python3-wheel python3-dev libffi-dev libssl-dev \
    && pip3 install -U pip setuptools \
    && pip install flask gunicorn[gevent] requests

RUN pip3 install --upgrade pip && \
	pip3 --no-cache-dir install mitmproxy==5.3.0

WORKDIR /app
COPY app/app/ .
RUN chmod -x run.sh
CMD /bin/bash run.sh
