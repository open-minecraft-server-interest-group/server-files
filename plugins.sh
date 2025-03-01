#!/bin/sh

download() {
    # renovate: datasource=hangar
    download_hangar deathchest 2.2.7

    download_github_release EssentialsX/Essentials 2.20.1 EssentialsX-2.20.1.jar
    download_luckperms https://download.luckperms.net/1573/bukkit/loader/LuckPerms-Bukkit-5.4.156.jar
}

download_hangar() {
    curl -fsSL -X GET "https://hangar.papermc.io/api/v1/projects/$1/versions/$2/PAPER/download" -o $1-$2.jar
}

download_github_release() {
    curl -fsSL -X GET "https://github.com/$1/releases/download/$2/$3" -O
}

download_luckperms() {
    curl -fsSL -X GET "$1" -O
}