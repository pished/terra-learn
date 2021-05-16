#!/bin/bash

echo "Hello, Worldm v2" > index.html
nohup busybox httpd -f -p ${server_port} &