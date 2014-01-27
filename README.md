# GOV.UK Smart Answers Development Stack

This is an experimental collection of scripts to start a local development environment to run [smart answers](https://github.com/alphagov/smart-answers), without the requirement to set up a virtual machine or run a reverse-proxy server.

These scripts make several assumptions:

* You have Git, [rbenv](https://github.com/sstephenson/rbenv) and Ruby 1.9.3-p484 installed.
* Nothing is running on port 5000 or 5001.

## Getting started

Run the `./install` script in this repository. It will check out the [smart answers](https://github.com/alphagov/smart-answers) and [static](https://github.com/alphagov/static) repositories, run `bundle install` in each repository, and install [foreman](https://github.com/ddollar/foreman).

Once it's complete, the stack can be started with `foreman start`. If all is well, you should be able to point your browser to <http://localhost:5001>.
