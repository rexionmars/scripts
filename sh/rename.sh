#!/usr/bin/env bash

for f in *webp; do
   mv -- "$f" "${f%.webp}.jpg"
done
