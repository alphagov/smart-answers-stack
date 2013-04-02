#!/bin/bash

cd $1
export STATIC_DEV="http://static.dev.gov.uk/"
export GOVUK_APP_DOMAIN="dev.gov.uk"
shift
exec "$@"
