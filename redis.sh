#!/bin/bash

sudo apt update

sudo apt install -y redis-server

sudo systemctl enable redis-server

sudo systemctl start redis-server

sudo systemctl status redis-server