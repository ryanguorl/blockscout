#!/bin/bash
truncate -s 0 $(docker inspect --format='{{.LogPath}}' halo-browser)
truncate -s 0 $(docker inspect --format='{{.LogPath}}' db)
