#!/usr/bin/env bash

URL=${URL:-example.local}

for i in `seq 1 5`; do \
  curl -L ${URL}/my-app --stderr - | grep Hostname && echo; \
done