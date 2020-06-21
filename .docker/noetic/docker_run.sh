#!/bin/bash
docker run -dit --dns 8.8.8.8 --name noetic -p 15900:5900 -p 18888:8888 uddua/jderobot-behavior-studio:noetic
