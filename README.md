# server-files

## Testing the renovate configuration locally

```bash
docker run --rm -v ./:/repo -w /repo -e LOG_LEVEL=debug -e GITHUB_COM_TOKEN=<TOKEN> renovate/renovate:latest --platform=local
```