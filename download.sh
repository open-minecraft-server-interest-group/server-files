#!/bin/sh

download() {
    download_paper 1.21.4 187
    download_hangar deathchest 2.2.7
    download_github_release EssentialsX/Essentials 2.20.1 EssentialsX-{{ver}}
    download_luckperms 5.4.156 1573
}

download_hangar() {
    curl -fsSL -X GET "https://hangar.papermc.io/api/v1/projects/$1/versions/$2/PAPER/download" -o $1-$2.jar
}

download_github_release() {
    curl -fsSL -X GET $(echo "https://github.com/$1/releases/download/$2/$3.jar" | sed "s/{{ver}}/$2/g") -O
}

download_luckperms() {
    curl -fsSL -X GET "https://download.luckperms.net/$2/bukkit/loader/LuckPerms-Bukkit-$1.jar" -O
}

download_paper() {
    curl -fsSL -X GET "https://api.papermc.io/v2/projects/paper/versions/$1/builds/$2/downloads/paper-$1-$2.jar" -O
}

download