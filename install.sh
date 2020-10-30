#!/bin/sh

oc create -f rbac.yaml
oc create -f secret.yaml
oc create -f serviceaccount.yaml
oc create -f https://raw.githubusercontent.com/tektoncd/catalog/master/task/git-clone/0.2/git-clone.yaml
oc create -f ko.yaml
oc create -f pipeline.yaml