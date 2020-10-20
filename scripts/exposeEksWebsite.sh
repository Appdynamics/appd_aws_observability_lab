#!/bin/bash

kubectl expose deployment web-front-end --type=LoadBalancer --name=adfin-web

