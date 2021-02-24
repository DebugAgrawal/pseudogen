# Get the base Ubuntu image from Docker Hub
FROM ubuntu:latest

# Update apps on the base image
RUN apt -y update && apt install -y

# Install the Clang compiler and python3
RUN apt -y install clang &&\
    apt install -y git python3 python3-pip


# Clone our repo
RUN mkdir -p /opt/
RUN cd /opt/ 
RUN git clone https://github.com/Open-Sourced-Olaf/pseudogen.git  && \
    cd pseudogen && \
    pip install -r requirements.txt

WORKDIR /opt/pseudogen

# Use Clang to compile the main.cpp source file
# TODO: In practice, we will wait for the user to press 'convert' button. so we could have a .sh file that gets executed when that happens.
RUN clang++ -o cpp-main cpp-pseudogen/main.cpp

# Run the output program from the previous step. CMD stands for command
CMD ["./cpp-pseudogen/main"]