#!/bin/bash
bundle install --path vendor
brakeman ./
bundle-audit check --update
dawn -r ./