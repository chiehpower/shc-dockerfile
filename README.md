# SHC
[![](https://img.shields.io/badge/Author-Chieh-blue?style=for-the-badge&logo=appveyor)](https://github.com/chiehpower) [![GitHub](https://img.shields.io/badge/Docker-v1.0-%23121011.svg?style=for-the-badge&logo=docker&logoColor=white)](https://hub.docker.com/repository/docker/chiehpower/shc/general)

We can download the source code from here: https://github.com/neurobin/shc/releases

You can build this image from dockerfile or pull from my [docker hub](https://hub.docker.com/repository/docker/chiehpower/shc/general)

### Options

- `-e` date : Expiration date in dd/mm/yyyy format [none]
- `-m` message : message to display upon expiration ["Please contact your provider"]
- `-f` script_name : File name of the script to compile
- `-r` : Relax security. Make a redistributable binary which executes on different systems running the same operating system.
- `-v` : Verbose compilation
- `-T` : Allow binary to be traceable (using strace, ptrace, truss, etc.)

### Usage

For example:

My script was named as `test.sh`.

```
shc -e 01/06/2030 -m "Please contact the administrator." -r -v -f test.sh
```

### Docker

**Build the image**

```
docker build -t chiehpower/shc:1.0 .
```

**Pull the image**

```
docker pull chiehpower/shc:1.0
```

**Start the container**

```
docker run --name shc -ti chiehpower/shc:1.0 bash 
```

### Reference

- [Official website](https://linux.die.net/man/1/shc)