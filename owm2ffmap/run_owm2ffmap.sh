#!/bin/bash

cd /home/hopglass/owm2ffmap
source env/bin/activate
timeout 300s python owm2ffmap.py > /tmp/owm2ffmap.log 2>&1 && cp -a nodes.json graph.json /home/hopglass/public_html/data && (cat /home/hopglass/public_html/hopglass.appcache.template ; echo -n "# date: " ; date) > /home/hopglass/public_html/hopglass.appcache
