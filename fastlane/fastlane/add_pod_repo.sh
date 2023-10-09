#!/bin/bash

SPEC_REPO_URL=https://tfs.intermedia.net/tfs/DefaultCollection/Mobile/_git/Specs
SPEC_REPO_NAME=intermedia-specs

if bundle exec pod repo list | grep -q $SPEC_REPO_NAME;
then
  echo Spec repo $SPEC_REPO_NAME already added
else
  bundle exec pod repo add $SPEC_REPO_NAME $SPEC_REPO_URL
fi

