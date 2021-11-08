# ftp-personal
Small and flexible docker image with vsftpd server cloned from https://hub.docker.com/r/delfer/alpine-ftp-server

## Usage

```bash
docker run -d \
    -p 31337:21 \
    -p 21000-21010:21000-21010 \
    -e USERS="one|1234" \
    -e ADDRESS=ftp.site.domain \
    delfer/alpine-ftp-server
```

## Configuration
Environment variables:

* USERS - space and | separated list (optional, default: ftp|alpineftp)
format name1|password1|[folder1][|uid1] name2|password2|[folder2][|uid2]
* ADDRESS - external address witch clients can connect passive ports (optional, should resolve to ftp server ip address)
* MIN_PORT - minimum port number to be used for passive connections (optional, default 21000)
* MAX_PORT - maximum port number to be used for passive connections (optional, default 21010)

## USERS examples
user|password foo|bar|/home/foo
user|password|/home/user/dir|10000
user|password||10000

Credit: https://hub.docker.com/r/delfer/alpine-ftp-server
