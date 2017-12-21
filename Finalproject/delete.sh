#!/bin/bash
find /home/gaurav/* -mmin -1 -exec rm -f {} \;
