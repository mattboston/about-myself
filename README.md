# About Myself

About Myself is an attempt to create an About.Me clone but only for myself.  Feel free to use this to create your own, I only ask that you leave the footer message in place.

# Quick reference

-	**Maintained by**:  
	[Matt Shields](https://gitlab.com/mattshields5)

-   **Docker Hub**:
    [About Myself](https://hub.docker.com/r/mattshields5/about-myself)

-	**Where to file issues**:  
	[https://github.com/mattboston/about-myself](https://github.com/mattboston/about-myself)

-   **Example Website**:
    [Shields.tv](https://shields.tv)

# How to use this image

## Basic Setup
- Create a project folder
- Create the following sub-folders
  - /project/data/config
  - /project/data/images
- Create a config.json using the example one here and put in the /projectd/data/config folder
- If you want to use a picture of yourself, put it in the /project/data/images folder
- Update the config.json with the settings you would like to use

## Using Docker Compose
- Add the docker-compose.yaml file in the /project folder
- Launch About Myself by running the following
  - docker compose up -f docker-compose.yaml

## Using Docker Run
```console
$ docker pull mattshields5/about-myself:latest
$ docker run -d \
    --name about-myself-test \
    -p 80:80 \
    -v "$PWD/data:/app/data:ro" \
    --restart=unless-stopped \
    mattshields5/about-myself:latest
```

Then you can hit `http://localhost:80` or `http://host-ip:80` in your browser.

# License

This project is licensed under the [GPL v3](https://www.gnu.org/licenses/gpl-3.0.en.html) license.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).  Use of this project is with no warranty or support, but feel free to open an issue if you find a bug.  As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.

If you find any bugs or issues, please file an issue here with as much detail as you can.
