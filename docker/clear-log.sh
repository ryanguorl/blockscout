#!/bin/bash
truncate -s 0 $(docker inspect --format='{{.LogPath}}' blockscout)
truncate -s 0 nohup.out
truncate -s 0 $(docker inspect --format='{{.LogPath}}' db)
