# Upstream

| | |
| --- | --- |
| Project | secDevLabs (Globo.com) |
| Repository | https://github.com/globocom/secDevLabs |
| App | `owasp-top10-2021-apps/a6/golden-hat` |
| Version | master (secDevLabs has no releases) |
| Commit | 10be438496e928c66567749f0aaf0bb976052bc9 |
| Licence | BSD-3-Clause |

The app folder [`owasp-top10-2021-apps/a6/golden-hat`](https://github.com/globocom/secDevLabs/tree/10be438496e928c66567749f0aaf0bb976052bc9/owasp-top10-2021-apps/a6/golden-hat) of that commit is vendored unchanged, without its Git history,
split so that each part sits in the build folder of the machine that uses it:

| Upstream path (in the app folder) | Here |
| --- | --- |
| everything | `build/app/app/` |

Each `build/<machine>/Dockerfile` says in its header comment how it differs from upstream:

- `build/app/`: upstream's `deployments/Dockerfile` with mitmproxy pinned to 5.3.0, the version upstream's unpinned install resolved to on Ubuntu 18.04's Python 3.6 and the one the lab is about (`app/block.py` also uses its API). The other packages stay unpinned, as upstream: no newer release of them supports Python 3.6.

To update, replace the vendored folders with a newer secDevLabs commit, then change this file.
