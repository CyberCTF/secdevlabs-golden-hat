# secDevLabs Golden Hat Society

[secDevLabs](https://github.com/globocom/secDevLabs)' [`owasp-top10-2021-apps/a6/golden-hat`](https://github.com/globocom/secDevLabs/tree/10be438496e928c66567749f0aaf0bb976052bc9/owasp-top10-2021-apps/a6/golden-hat) app, by Globo.com and the
secDevLabs contributors: a Flask app (gunicorn) behind a mitmproxy 5.3.0 reverse proxy that blocks its secret page, a Vulnerable and Outdated Component open to HTTP request smuggling (CVE-2021-39214). This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machines, built from
the vendored app folder (see [UPSTREAM.md](UPSTREAM.md)).

| Machine | Service |
| --- | --- |
| app | mitmproxy on port 10006, in front of gunicorn on 127.0.0.1:8000 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:10006/. The same spec runs as Docker on a local VM (`docker-vm`), on a cloud VM
(`cloud-docker`) or on Kubernetes. Lab guide: the app's
[README](https://github.com/globocom/secDevLabs/blob/10be438496e928c66567749f0aaf0bb976052bc9/owasp-top10-2021-apps/a6/golden-hat/README.md), with the attack narrative and the secDevLabs walkthrough.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

BSD-3-Clause, as secDevLabs ([LICENSE](LICENSE)). The third-party software inside the images keeps
its own licence. This application is deliberately vulnerable: keep it isolated.
