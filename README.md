# accra_transit_gif

This repository is a tool that downloads an OSM history file and generates a GIF animation of the evolution of the transit data mapping.

For now, the code is very specific to Accra, Ghana, but feel free to adapt it to your region.

![result in Accra](Accra_Ghana_Transit_data_creation.gif)

## Requirements

To use this tool, you need :
* python3
* a headless firefox to make screenshots with geckodriver: https://github.com/mozilla/geckodriver/releases/download/v0.24.0/geckodriver-v0.24.0-linux64.tar.gz
* some python dependencies (see `requirements.txt`)

## How to run
This tool requires OSM data with changesets infos. An OSM Login is required, so this tool doesn't download data anymore.

### How to run on your computer

First of all, install dependencies.

Then follow the steps:
* check that the `./data` directory is empty
* download requested data from https://osm-internal.download.geofabrik.de/ in the `./data` directory
* change script params in `./config/config.ini` file (if necessary)
* execute this command line `python3 transit_to_gif.py`.

### How to run with docker
* install docker ^^
* check that the `./data` directory is empty
* download requested data from https://osm-internal.download.geofabrik.de/ in the `./data` directory
* change script params in `./config/config.ini` file (if necessary)
* prepare "accra_transit_gif" docker image : `docker build -f Dockerfile -t accra_transit_gif .`
* run the program : `docker run --rm -v /absolute/path/to/./data:/data accra_transit_gif`

Note:
To launch a terminal inside the container, run: `docker run --rm -it -v /absolute/path/to/./data:/data accra_transit_gif bash`
