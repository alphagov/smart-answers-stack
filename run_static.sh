#!/bin/bash

cd ../static

export GOVUK_APP_DOMAIN="dev.gov.uk"

# Unlike other apps, Static doesn't like having a trailing
# slash in the asset host
export STATIC_DEV="http://static.dev.gov.uk"

exec ./script/rails server -p 5000
