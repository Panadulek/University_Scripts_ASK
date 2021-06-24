#!/bin/bash

rsync -avz /home/jordan/ -e ssh jordan@172.16.0.204:/mnt/BACKUP/
