#!/bin/bash

VAL=$(kubectl describe deployments nginx-deployment | grep -Po '(?<=(updated \| )).*(?= total)')
TOTAL=$(($VAL-1))
kubectl scale deployment nginx-deployment  --replicas=$TOTAL