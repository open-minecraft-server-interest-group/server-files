# Contributing guide

As the server should be developed by members of the community, all contributions are welcome.
At this stage, merge requests will be accepted based solely on whether they make sense. At a later point, when a community has been established, changes will be voted on.

## Downloading plugins
Plugins are downloaded by running the [download.sh](./scripts/download.sh) script when the server docker image is built.
For local development, run the script in any POSIX-compatible shell with `curl` installed.

## Renovate
The Renovate bot automatically updates version numbers in the [download.sh](./scripts/download.sh) script. Renovate is configured in the [renovate.json](./renovate.json) configuration file.
To run renovate locally, use the following command: `docker run --rm -v ./:/repo -w /repo -e LOG_LEVEL=debug -e GITHUB_COM_TOKEN=<TOKEN> renovate/renovate:latest --platform=local`, replacing `<TOKEN>` with a GitHub token.