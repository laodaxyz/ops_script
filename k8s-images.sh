#!/bin/sh
images=(
    kube-apiserver:v1.14.0
    kube-controller-manager:v1.14.0
    kube-scheduler:v1.14.0
    kube-proxy:v1.14.0
    pause:3.1
    etcd:3.3.10
    coredns:1.3.1
	kubernetes-dashboard-amd64:v1.10.1
	heapster-grafana-amd64:v5.0.4
	heapster-amd64:v1.5.4
	heapster-influxdb-amd64:v1.5.2
)
for imageName in ${images[@]} ; do
    docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/${imageName}
    docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/${imageName} k8s.gcr.io/${imageName}
    docker rmi registry.cn-hangzhou.aliyuncs.com/google_containers/${imageName}
done