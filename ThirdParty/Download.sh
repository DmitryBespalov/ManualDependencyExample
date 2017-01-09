#! /usr/bin/env bash
set -e

function current_branch {
  echo `git branch | sed -n -e "s/^\* \(.*\)/\1/p"`
}

IFS=","
while read name repo revision; do
  if [ -d "$name" ]; then
    continue
  fi
  git clone $repo $name
  pushd $name
  git pull --tags
  if [ `current_branch` != "$revision" ]; then
    if [ -z `git branch -a | grep "remotes/origin/$revision"` ]; then
      git checkout $revision -b $revision
    else
      git checkout $revision
    fi
  fi
  rm -rf .git
  popd 
done < Repositories.csv

