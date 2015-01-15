#!/bin/bash

function gwatch {
while true; do
  git remote update
  git log --graph --date=relative --all
  sleep 1
done
}

gtop ()
{
  while true; do
    clear;
    git status -s;
    git log -5;
    sleep 4;
  done
}
