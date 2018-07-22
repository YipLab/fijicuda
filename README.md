# fijicuda
Docker image including CUDA and Fiji

Pull: docker pull shuenlim/fijicuda:latest
Run (linux): nvidia-docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v SAVED_DATA:/fiji/data fijicuda:latest
(change SAVED_DATA location)

Used the following Dockerfiles to build fijicuda:
https://github.com/dockerfile/ubuntu/blob/master/Dockerfile
https://github.com/dockerfile/java/blob/master/openjdk-7-jdk/Dockerfile
https://github.com/fiji/dockerfiles/blob/61b5365e56b7982825292b7557aff302c7de4bda/fiji-openjdk-7/Dockerfile
https://imagej.net/Docker#How_to_use_the_Fiji_Docker_imagesfiji/fiji:fiji-openjdk-7Docker
