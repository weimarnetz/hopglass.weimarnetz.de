# hopglass.weimarnetz.de
Hopglass Setup - siehe auch https://github.com/freifunk-berlin/hopglass.berlin.freifunk.net

- hopglass - https://github.com/hopglass/hopglass
- owm2ffmap 

# Setup 

`owm2ffmap.py` - polls the OpenWifiMap-Server and creates the data files for Hopglass. 
Hopglass is a static JavaScript app that displays the map and data. 

`run_owm2ffmap.sh` - script for cron 

## Crontab 


    # /etc/crontab 
    */5 *   * * *   hopglass /home/hopglass/owm2ffmap/run_owm2ffmap.sh


## Setup Hopglass

You need a recent nodejs + npm (tested on 8.x)

Add a user and build hopglass: 

    # adduser --disabled-password --shell /bin/nologin hopglass
    # sudo -u hopglass /bin/bash 
    $ git clone https://github.com/hopglass/hopglass
    $ cd hopglass; npm install && npm install grunt-cli 
    $ ./node_modules/.bin/grunt 
    
Apache config [here](https://github.com/weimarnetz/hopglass.weimarnetz.de/blob/master/apache/hopglass.conf). 

Hopglass Config [here](https://github.com/weimarnetz/hopglass.weimarnetz.de/blob/master/hopglass/config.json)


