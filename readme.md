# flutter_lcov
This is a docker image for building flutter applications with lcov.

It's built against the master branch of flutter rather than the stable one.

## build

First, to tag it correctly, check the current flutter version:
```shell
$ flutter --version | grep Flutter
```

Then grab that version and use for tag, ex:
```shell
$ docker build . --tag greycastle/flutter_lcov:v1.4.11-pre.22
```