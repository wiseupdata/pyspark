.SILENT:

# Extract version number from arguments
ifeq ($(filter -v%, $(MAKEFLAGS)),)
	VERSION = 3.10
else
	VERSION = $(subst -v,,$(filter -v%, $(MAKEFLAGS)))
endif

make: clean-docker

clean: clean-containers clean-images

clean-containers:
	-docker rm $(docker ps -a -q) -f 2>/dev/null
	echo "Docker containers cleaned"
	docker ps -a

clean-images:
	-docker image rm $(docker image ls -a ) -f 2>/dev/null
	echo "Docker images cleaned"
	docker images -a

clean-docker: clean-containers clean-images

build-docker:
	echo "Starting build to version $VERSION "
	
build: clean-docker build-docker


# make build -v 3.10
#docker build -t python ./versions/$VERSION --no-cache