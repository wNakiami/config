#! /usr/bin/env bash

if [[ -n (command -v git) ]]; then
    git config --global pager.status false
    git config --global pager.branch false
    git config --global pager.stash false
    git config --global pager.config false

    git config --global icdiff.options '--line-numbers'
fi