#!/bin/bash

gwatch ()
{
  LOGLINES=$(((LINES*3)/5));
  while true; do
    git fetch;
    clear;
    git log --graph --date=relative --all -$LOGLINES;
    sleep 60;
  done
}

gtop ()
{
  LOGLINES=$(((LINES*3)/5));
  while true; do
    clear;
    git status -s;
    git log --oneline -$LOGLINES;
    sleep 4;
  done
}
