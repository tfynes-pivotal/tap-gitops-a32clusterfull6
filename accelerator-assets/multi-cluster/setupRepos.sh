#!/bin/bash

# create deliveries repo
cd sample-demos
git init -b main
git add .
git commit -am "."
gh repo create tapdemo2c6-workloads-default --private
git remote add origin https://github.com/tfynes-pivotal/tapdemo2c6-workloads-default
git branch -M main
git push -u origin main

# create deliverables repo
gh repo create tapdemo2c6-deliverables --private

# create workload repo's per namespace
gh repo create tapdemo2c6-deliveries --private

