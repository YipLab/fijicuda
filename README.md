# fijicuda
Docker image including CUDA and Fiji

Launch (linux) using command:
docker run -v /Users/foo/data:/fiji/data -e DISPLAY=192.168.15.2:0 fijicuda:latest

Used the following Dockerfiles to build fijicuda:
https://github.com/dockerfile/ubuntu/blob/master/Dockerfile
https://github.com/dockerfile/java/blob/master/openjdk-7-jdk/Dockerfile
https://github.com/fiji/dockerfiles/blob/61b5365e56b7982825292b7557aff302c7de4bda/fiji-openjdk-7/Dockerfile
https://imagej.net/Docker#How_to_use_the_Fiji_Docker_imagesfiji/fiji:fiji-openjdk-7Docker image including CUDA and Fiji
	at sun.awt.X11GraphicsEnvironment.<clinit>(X11GraphicsEnvironment.java:74)
	at java.lang.Class.forName0(Native Method)
	at java.lang.Class.forName(Class.java:195)
