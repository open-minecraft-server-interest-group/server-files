#!/bin/sh

download() {
    # renovate: datasource=hangar
    download_hangar deathchest 2.2.7
}

download_hangar() {
    curl -fsSL -X GET "https://hangar.papermc.io/api/v1/projects/$1/versions/$2/PAPER/download" -o $1-$2.jar
}

download