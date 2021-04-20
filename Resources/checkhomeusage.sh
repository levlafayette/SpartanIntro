#!/bin/bash

# Enter username to check; default is current user.

MYUSER=$1

ls -lhd --si ${MYUSER} | awk '{print $3 "," $5}'
