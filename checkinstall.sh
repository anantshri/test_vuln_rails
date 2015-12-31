#!/bin/bash
echo "Setup Bundle files"
bundle install --path vendor
echo "Install and Run brakeman"
gem install brakeman && brakeman ./
echo "Install and Run bundler-audit and do a bundle audit"
gem install bundler-audit && bundle-audit --update && bundle-audit check 
echo "Install and run DawnScanner "
gem install dawnscanner && dawn -r ./
echo "Install and run retire.js"
npm install retire && retire -j --path ./
echo "All Test done"