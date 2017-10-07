#!/usr/bin/env bash

if [ -z "$1" ]; then
    dotnet --info
else 
    dotnet restore && dotnet $@
fi
