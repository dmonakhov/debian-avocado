# debian-avocado
Dockerfile creates an debian image with avocado framework installed

## Avocado
**avocado-debian**: avocado/debian-avocado/Dockerfile
Basic debian image with avocado-framework instaled
similar to https://github.com/ldoktor/fedora-avocado
Usage ::
```
$ avocado run sleeptest.py --docker debian-avocado
```
