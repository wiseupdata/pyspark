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

```
docker run -it -u ubuntu wiseupdata/python bash
```

## Versions ✨️

### Tag 3.9-ubuntu-23.04 python_3_9

- Ubuntu 23.04 official
- python 3.9`python`
- python 3.11`python3`
- user`ubuntu` with sudo, no password
- validated wit A.I. 🦾

```
docker run -it -u ubuntu wiseupdata/python:3.9-ubuntu-23.04 bash
```

## Simple customization example. 🎢

Update the `Dockerfile` and run the command bellow

```
docker build -t python .
docker run -it --rm python
```

# Create a tag and deploy to dockerhub 🥳

log in your account 🤜

```
docker login -u wiseupdata
```

Create a tag 🤺

```
docker tag python wiseupdata/python:3.9-ubuntu-23.04
```

push your image ♨️

```
docker push wiseupdata/python:3.9-ubuntu-23.04
```

# Test the image 🎢

```
docker run -it -u ubuntu wiseupdata/python:3.9-ubuntu-23.04
```

# Utils 🎁

list all container
```
docker ps -a
```

kill all containers ☠️
```
docker rm $(docker ps -a -q) -f
```

list the images
```
docker image ls -a
```

delete one image
```
docker image rm python -f
```

Delete all images ☠️
```
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
