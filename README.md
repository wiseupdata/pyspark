<a href="https://github.com/wiseupdata/wiseupdata">
  <img align="left" alt="Wise Up Data's Instagram" width="22px" src="https://raw.githubusercontent.com/wiseupdata/wiseupdata/main/assets/instagram.png" />   
</a> 
<a href="https://github.com/wiseupdata/wiseupdata">
  <img align="left" alt="wise Up Data's Discord" width="22px" src="https://raw.githubusercontent.com/wiseupdata/wiseupdata/main/assets/discord.png" />
</a>
<a href="https://github.com/wiseupdata/wiseupdata">
  <img align="left" alt="wise Up Data | Twitter" width="22px" src="https://raw.githubusercontent.com/wiseupdata/wiseupdata/main/assets/twitter.png" />
</a>
<a href="https://github.com/wiseupdata/wiseupdata">
  <img align="left" alt="wise Up Data's LinkedIN" width="22px" src="https://raw.githubusercontent.com/wiseupdata/wiseupdata/main/assets/linkedin.png" />
</a>

![Visitors](https://api.visitorbadge.io/api/visitors?path=https%3A%2F%2Fgithub.com%2Fwiseupdata%2Fpython&countColor=%2337d67a&style=flat)
![license](https://img.shields.io/github/license/wiseupdata/python)

---
<a name="readme-top"></a>

<h1>
<img align="left" alt="Docker image" src="https://raw.githubusercontent.com/wiseupdata/python/main/assets/imgs/docker.png" width="100" />

Python docker images! 🚀️

</h1>

# Simple to use ❤️

```shell
docker run -it -u ubuntu wiseupdata/python bash
```

<br>

# Summary 📃

- Versions info 🐍
  - <p align="left"><a href="#version-3.11">3.11</a></p>
  - <p align="left"><a href="#version-3.10">3.10</a></p>
  - <p align="left"><a href="#version-3.9">3.9</a></p>

 
- Utils 🛠️
  - <p align="left"><a href="#ref_util">Utils</a></p>
  - <p align="left"><a href="#ref_build">Create your own image to dockerhub</a></p>
  - <p align="left"><a href="#ref_references">References</a></p>
  - [Dockerhub versions](https://hub.docker.com/r/wiseupdata/python/tags)


<br>

<a name="version-3.11"></a>

## Version 3.11 ✨️

- Python 3.11 
- Ubuntu 23.04 Luna - Official
- User`ubuntu` with sudo, no password
- Made with A.I. contribution 🤖 
- [Dockerfile](https://github.com/wiseupdata/python/blob/main/versions/3.11/Dockerfile)

  > This setup it's the same for the tags: 3.11 and 3.11-ubuntu-23.04

<br>

Example with specific version 💻:
```shell
docker run -it -u ubuntu wiseupdata/python:3.11 bash
docker run -it -u ubuntu wiseupdata/python:3.11-ubuntu-23.04 bash
```

### Info 🔎
- Python 3.11 it's official from `www.python.org`
  - To use python 3.11 just type:  `python`


<br>

<a name="version-3.10"></a>

## Version 3.10 ✨️

- Python 3.10
- Ubuntu 23.04 Luna - Official
- User`ubuntu` with sudo, no password
- Made with A.I. contribution 🤖 
- [Dockerfile](https://github.com/wiseupdata/python/blob/main/versions/3.10/Dockerfile)

  > This setup it's the same for the tags: 3.10 and 3.10-ubuntu-23.04

<br>

Example with specific version 💻:
```shell
docker run -it -u ubuntu wiseupdata/python:3.10 bash
docker run -it -u ubuntu wiseupdata/python:3.10-ubuntu-23.04 bash
```

### Info 🔎
- Python 3.10 it's official from `www.python.org`
  - To use python 3.10 just type:  `python`

<br>

<a name="version-3.9"></a>

## Version 3.9 ✨️

- Python 3.9
- Ubuntu 23.04 Luna - Official
- User`ubuntu` with sudo, no password
- Made with A.I. contribution 🤖 
- [Dockerfile](https://github.com/wiseupdata/python/blob/main/versions/3.9/Dockerfile)

  > This setup it's the same for the tags: 3.9 and 3.9-ubuntu-23.04

<br>

Example with specific version 💻:
```shell
docker run -it -u ubuntu wiseupdata/python:3.9 bash
docker run -it -u ubuntu wiseupdata/python:3.9-ubuntu-23.04 bash
```

### Info 🔎
- Python 3.9 it's official from `www.python.org`
  - To use python 3.9 just type:  `python`


<br>

<a name="ref_build"></a>

# Create your own image to dockerhub 🥳
<details>
<summary>
click here!▶️
</summary>


## Simple customization example. 🎢

- Update the `Dockerfile` and run the command bellow
- Build the image

```shell
docker build -t python ./versions/3.11
```
- Test the image
```shell
docker run -it --rm python bash
```

- Log in to your account 🤜

```shell
docker login -u wiseupdata
```

- Create a tag 🤺

```shell
docker tag python wiseupdata/python
docker tag python wiseupdata/python:3.11
docker tag python wiseupdata/python:3.11-ubuntu-23.04
```

- push your image to dockerhub ♨️
```shell
docker push wiseupdata/python
docker push wiseupdata/python:3.11
docker push wiseupdata/python:3.11-ubuntu-23.04
```

### Test the image 🎢

```shell
docker run -it -u ubuntu wiseupdata/python:3.11 bash
```
</details>

<br>

<a name="ref_util"></a>

# Utils 🎁 
<details>
<summary>
click here!▶️
</summary>

list all container
```shell
docker ps -a
```

kill all containers ☠️
```shell
docker rm $(docker ps -a -q) -f
```

list the images
```shell
docker image ls -a
```

delete one image
```shell
docker image rm python -f
```

Delete all images ☠️
```shell
docker image rm  $(docker image ls -a ) -f
```

</details>
<br>
<br>


---
<br>
<br>

<a name="ref_references"></a>

# References 🌍 🗄️

1. [GitHub Repository](https://github.com/wiseupdata/python)
1. [WiseUpData](https://www.wiseupdata.com/)
1. [Emojis](https://github.com/wiseupdata/emojis)


<br>
<br>

---

## Maintainer 🤗 👨‍💻

Silvio Liborio

📧 silvio.liborio@wiseupdata.com

<a href="https://www.linkedin.com/in/silvio-de-melo-liborio">silvio-de-melo-liborio <img align="left" alt="LinkedIN" width="18px" src="https://raw.githubusercontent.com/wiseupdata/wsl-latest/main/assets/linkedin.svg" />
</a>

<br>
<p align="right"><a href="#readme-top">back to top ⏫ </a></p>
<br>
<br>
<br>
<br>
