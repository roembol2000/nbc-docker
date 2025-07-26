# NBC Docker Container

Simple docker container for running the NBC compiler

## Building the container

Simply run the `build_dockerfile.sh` file. It will build the dockerfile under
the tag `nbc-compiler:latest`.

## Using the container

To use the compiler you can simply use `docker run`.

```sh
$ docker run --rm nbc-compiler:latest 
Next Byte Codes Compiler version 1.2 (1.2.1.r4, built Tue Mar 15 16:10:49 CDT 2011)
     Copyright (c) 2006-2010, John Hansen
Use "nbc -help" for more information.
```

The working directory in the container is `/workspace`. So if you wanted to
compile a file in your current directory:

```sh
docker run --rm \
  -v "$(pwd)":/workspace \
  nbc-compiler:latest \
  -O=MyProgram.rxe MyProgram.nxc
```
