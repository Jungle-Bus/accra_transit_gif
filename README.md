# accra_transit_gif

This repository is a tool that downloads an OSM history file and generates a GIF animation of the evolution of the transit data mapping.

For now, the code is very specific to Accra, Ghana, but feel free to adapt it to your region.

![result in Accra](Accra_Ghana_Transit_data_creation.gif)

## Requirements

To use this tool, you need :
* python3
* phantomjs (https://gist.github.com/julionc/7476620)
* some python dependencies (see `requirements.txt`)

## How to run
To run this tool, execute this command line `python3 transit_to_gif.py`.

# How to run with docker
* prepare "accra_transit_gif" image : `docker build -f Dockerfile -t accra_transit_gif .`
* run the program : `docker run --rm -v /absolute/path/to/./data:/data accra_transit_gif`

To use a command line inside the container : `docker run --rm -it -v /absolute/path/to/./data:/data accra_transit_gif bash`
