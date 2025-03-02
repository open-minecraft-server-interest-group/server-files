FROM eclipse-temurin:21-jdk

# Server is in /srv
WORKDIR /srv

# These are all the directories that contain data, prefixed with the workdir /srv
VOLUME [ "/srv/world", "/srv/world_nether", "/srv/world_the_end" ]

# Copy & run download script to download server binaries
COPY ./scripts/download.sh /tmp/download.sh
RUN chmod +x /tmp/download.sh && /tmp/download.sh

# Copy server files
COPY . /srv
RUN ls /srv/plugins && sleep 10

# Copy & run variable replacement script
COPY ./scripts/replace.sh /tmp/replace.sh
RUN chmod +x /tmp/replace.sh && /tmp/replace.sh

# Start server
ENTRYPOINT chmod +x /srv/scripts/start.sh && /srv/scripts/start.sh