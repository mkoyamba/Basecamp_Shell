#!/bin/sh
FT_USER=staff
groups $FT_USER | tr ' ' ',' | tr -d '\n'