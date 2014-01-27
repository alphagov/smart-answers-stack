#!/bin/bash

cd $1
export PLEK_SERVICE_STATIC_URI=http://localhost:5000
shift
exec "$@"
