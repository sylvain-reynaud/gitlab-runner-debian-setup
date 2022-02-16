# gitlab-runner-debian-setup
Simple setup for a Gitlab Runner bare metal on Debian

# How to setup

* Clone the repo

```sh
cd /opt
git clone git@github.com:sylvain-reynaud/gitlab-runner-debian-setup.git
```

* Run setup.sh as `root`
```sh
./setup.sh
```

* Go to your Gitlab project, you must be the master.
* Get the registration token (Your project > Settings > CI/CD > Runner)
* Register the runner as `root`
```sh
export REGISTRATION_TOKEN=...
export GITLAB_URL=https://.../
gitlab-runner register --url $GITLAB_URL --registration-token $REGISTRATION_TOKEN
```
* Choose `docker` or `docker+machine`, it depends of the needs.
* Edit your runner (Your project > Settings > CI/CD > Runner)
* Untick `Lock to current projects`