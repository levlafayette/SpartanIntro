#!/bin/bash

# Enter the project number that you wish to check, e.g., punim0001

MYPROJ=$1

ls -lhd --si ${MYPROJ} | awk '{print $4 "," $5}'
