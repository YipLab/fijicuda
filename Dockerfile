# Base image with compatible CUDA and CUDNN drivers for Tensorflow 1.4.0
FROM nvidia/cuda:8.0-cudnn6-runtime-ubuntu14.04

# Install prereqs to install Java
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget && \
  rm -rf /var/lib/apt/lists/*

# Install Java
RUN \
  apt-get update && \
  apt-get install -y openjdk-7-jdk && \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /fiji

# Install Fiji.
RUN \
      curl -O http://update.imagej.net/bootstrap.js && \
      jrunscript bootstrap.js update-force-pristine

# Add fiji to the PATH
ENV PATH $PATH:/fiji

# Define default command.
CMD ["fiji-linux64"]

 # Replace 1000 with your user / group id
 RUN export uid=1000 gid=1000 && \
     mkdir -p /home/developer && \
     echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
     echo "developer:x:${uid}:" >> /etc/group && \
     echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
     chmod 0440 /etc/sudoers.d/developer && \
     chown ${uid}:${gid} -R /home/developer

 USER developer

 ENV HOME /home/developer
 
 CMD fiji-linux64