#!/bin/bash
if [ $# -eq 0 ]; then
    >&2 echo "No arguments provided. Please do $0 <ENTER A BUCKET NAME>"
    exit
else
    for x in $(gsutil ls -r gs://$1); do
        gsutil acl ch -u AllUsers:R $x
    done
fi
