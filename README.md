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

![visitors](https://visitor-badge.glitch.me/badge?page_id=wiseupdata.python&left_color=green&right_color=black)
![license](https://img.shields.io/github/license/wiseupdata/python)

---

<h1>
<img align="left" alt="Docker image" src="https://raw.githubusercontent.com/wiseupdata/python/main/assets/imgs/docker.png" width="100" />

Python docker images! 🚀️

</h1>

# Simple to use ❤️

```shell
docker run -it -u ubuntu wiseupdata/python bash
```

## Version 3.9 ✨️

- Python 3.9
- Python 3.11
- Ubuntu 23.04 official
- User`ubuntu` with sudo, no password
- Made with A.I. contribution 🤖 

Example:
```shell
docker run -it -u ubuntu wiseupdata/python:python_3_9_ubuntu_23_04
```


### inside the container

- For python 3.9 just type:  `python`
- For python 3.11 just type:  `python3`


<br>

# Tip 🥳
Create you own image to dockerhub 

## Simple customization example. 🎢

Update the `Dockerfile` and run the command bellow

```shell
docker build -t python .
docker run -it --rm python
```

Log in your account 🤜

```shell
docker login -u wiseupdata
```

Create a tag 🤺

```shell
docker tag python wiseupdata/python_3_9_ubuntu_23_04
```

push your image ♨️

```shell
docker push wiseupdata/python_3_9_ubuntu_23_04
```

# Test the image 🎢

```shell
docker run -it -u ubuntu wiseupdata/python_3_9_ubuntu_23_04 bash
```

# Utils 🎁

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

<br>
<br>

---
<br>
<br>

# References 🌍 🗄️

1. [GitHub Repository](https://github.com/wiseupdata/python)
1. [WiseUpData](https://www.wiseupdata.com/)
1. [Emojis](https://github.com/wiseupdata/emojis)


<br>
<br>
---

#### Maintainer 🤗 👨‍💻

Sivio Liborio

📧 silvio.liborio@wiseupdata.com

<a href="https://www.linkedin.com/in/silvio-de-melo-liborio">silvio-de-melo-liborio <img align="left" alt="LinkedIN" width="18px" src="https://raw.githubusercontent.com/wiseupdata/wsl-latest/main/assets/linkedin.svg" />
</a>

<br>
<br>
<br>
<br>
<br>