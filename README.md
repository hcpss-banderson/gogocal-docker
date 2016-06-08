# GoGoCal Docker Image

This is a docker image for the [GoGoCal](https://github.com/HCPSS/gogocal)
Google Calendar integration.

## Usage

By default the image will look for the Google API service account key at
`/root/key.json` and the redis server at `redis:6379`. So the easiest way to
get started is:

```
docker run -d --name mygogocal -v /path/to/key.json:/root/key.json --link someredis:redis banderson/gogocal
```
