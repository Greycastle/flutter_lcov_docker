# flutter_lcov
This is a docker image for building flutter applications with lcov.

It's built against the master branch of flutter rather than the stable one.

## build

Since it won't upgrade unless the step for upgrade is run, make sure to build it without cache:
```shell
$ docker build . --no-cache
```

To tag it correctly, check the current flutter version:
```shell
$ flutter --version | grep Flutter
```

Then grab that version and use for tag, ex:
```shell
$ docker build . --tag greycastle/flutter_lcov:v1.4.11-pre.22
```

Finally push it:
```shell
$ docker push greycastle/flutter_lcov:v1.4.11-pre.22
```