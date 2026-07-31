#!/bin/bash

base64 "$1" | sed -z 's/\n//g'
