#!/bin/bash

ffmpeg -i "https://0xxiv.lookmovie.io/dqsqiYgLgGRhcINgDjICtw/1596209376/storage4/shows/0108778-friends-1994/5199-S10E18-1553862174/720p/index.m3u8" -c copy -bsf:a aac_adtstoasc "s10e18.mp4"
