# User documentation

This repository contains documentation for the nodes on how to upload data to LeoMed. 

There are two remotes:
* Gitlab: **origin** git@gitlab.ethz.ch:ovprecision/ovp_user_docs.git
* Github: **github** git@github.com:ikeller/ovp_user_docs.git

Github is used to deploy the page. In principle, Gitlab Pages also exist, but it does not seem to be activated for gitlab.ethz.ch.

To deploy the page, run:
```
kdocs gh-deploy --remote-name github --remote-branch gh-pages
```

Your documentation should shortly be available at: https://ikeller.github.io/ovp_user_docs/
