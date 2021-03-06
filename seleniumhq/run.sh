#!/usr/bin/env bash

# Setup display
export DISPLAY=:10

# Redirect stdout ( > ) into a named pipe ( >() ) running "tee"
exec > >(tee log)
exec 2>&1

max=1440
for i in `seq 1 $max`
do
    echo "no.$i"
    date
    python fake_click.py
    sleep 20
done
