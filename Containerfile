FROM docker.io/osrf/ros:noetic-desktop-full-focal

LABEL LastUpdate="2025-10-25"

RUN apt update \
    && apt install -qqy \
    ros-noetic-dynamixel-sdk \
    ros-noetic-effort-controllers \
    ros-noetic-hector-gazebo \
    ros-noetic-joy

ADD ROBOTIS-Framework /opt/ROBOTIS-Framework
ADD ROBOTIS-Framework-msgs /opt/ROBOTIS-Framework-msgs

RUN mkdir /include
