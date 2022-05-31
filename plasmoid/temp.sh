#!/bin/bash
TEMP="$(sensors|awk '/Tctl/{print substr($2,2,2)}')°C"
echo -e  " $TEMP"