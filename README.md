# GOV.UK Smart Answers Development Stack

This is an experimental collection of scripts to start a local development environment to run [smart answers](https://github.com/alphagov/smart-answers), without the requirement to use a virtual machine. It uses the built-in installation of Apache on OS X to run a reverse-proxy to the application servers.

These scripts make several assumptions:

* You are using OS X with the default Apache server enabled
* Ruby 1.9.3 and Git is installed
* A MongoDB server is present on port 27017 (this does not require any GOV.UK specific data)
* You have no pre-existing host or DNS configuration for `dev.gov.uk`

## Getting started

1. Clone [smart answers](https://github.com/alphagov/smart-answers), [content api](https://github.com/alphagov/govuk_content_api) and [static](https://github.com/alphagov/static) to the directory above this repo.

    cd ../
    git clone https://github.com/alphagov/smart-answers.git
    git clone https://github.com/alphagov/govuk_content_api.git
    git clone https://github.com/alphagov/static.git

2. Run `bundle install` inside each repo.

3. Run the `./install` from this repository (you will need `sudo` access).

4. Install [foreman](http://rubygems.org/gems/foreman).

5. Start the stack with `foreman start` and point your browser to `http://smartanswers.dev.gov.uk/`

# Constraints

- A domain other than `dev.gov.uk` cannot be used due to how [Plek](https://github.com/alphagov/plek) forces https on other domains.
- Smart Answers falls over when the content api is not available, however it will work fine if the content api is available and returns 404 for artefacts.
- The `STATIC_DEV` environment variable must not omit the trailing slash for starting Smart Answers, but must omit the slash for Static.
