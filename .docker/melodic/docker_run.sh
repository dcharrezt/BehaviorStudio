#!/bin/bash
docker run -dit --dns 8.8.8.8 --name behavior_studio -p 15900:5900 uddua/jderobot-behavior-studio:latest
