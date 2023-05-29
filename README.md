# Docker container for Polyester

Dockerfile for [Polyester](https://github.com/alyssafrazee/polyester): R package designed to simulate RNA sequencing experiments with differential transcript expression.

It's on [dockerhub](https://hub.docker.com/r/naotokubota/polyester) and [github](https://github.com/NaotoKubota/Polyester).

## tags and links

- `1.0` [(master/Dockerfile)](https://github.com/NaotoKubota/Polyester/blob/master/Dockerfile)

## how to build

```sh
docker pull naotokubota/polyester:1.0
```

or

```sh
git clone git@github.com:NaotoKubota/Polyester.git
cd Polyester
docker build --rm -t naotokubota/polyester:1.0 .
```

## running

```sh
docker run --rm -it naotokubota/polyester:1.0
```
