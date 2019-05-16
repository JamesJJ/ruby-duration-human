#!/bin/bash

rm -f ./*.gem
gem build duration-human.gemspec && \
  gem push duration-human-*.gem
rm -f ./*.gem

