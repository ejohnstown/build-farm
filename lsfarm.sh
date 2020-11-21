#!/bin/bash

docker images | grep farm | awk '{print $1 ":" $2}'
