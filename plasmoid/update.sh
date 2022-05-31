#!/bin/bash
cupd=$(checkupdates | wc -l | head -c3 )
echo -e " $cupd"
