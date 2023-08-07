#!/bin/bash
# drag.sh

if [ "$fx" == "" ]; then
  ripdrag $fs/*
else
  ripdrag -A -x $fx
fi 
