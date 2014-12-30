#!/bin/bash

function gwatch {
while true; do
  git remote update
  git log --graph --date=relative --all
  sleep 120
done
}
