#!/bin/ash
kubectl --kubeconfig={ } -n kube-system run -it --rm --restart=Never debug --image=whoami6443/debugger:0.0.1 -- bash
