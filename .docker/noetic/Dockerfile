FROM uddua/jderobot-base:focal

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
	cmake \
	icewm \
	git \
	python3-pip \
 	python3-setuptools \
	python3-opengl \ 
	tmux \
	x11vnc \
	xvfb && \
    pip3 install --upgrade pip

# Installing behavior studio
RUN git clone -b python_3.6.9 https://github.com/dcharrezt/BehaviorStudio && \
    cd BehaviorStudio && \
    pip3 install -r requirements.txt && \
    pyrcc5 -o behavior_studio/ui/gui/resources/resources.py \
	behavior_studio/ui/gui/resources/resources.qrc

WORKDIR /root/

COPY startup.sh compile_opencv.sh /root/

## Not working atm
#RUN /bin/bash -c "source ~/.bashrc" && \
#    chmod +x startup.sh && \
#    chmod +x compile_opencv.sh && \
#    ./compile_opencv.sh

CMD ["bash"]
