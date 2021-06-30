# ALB Ingress

ALB Ingress Helm chart for Kubernetes


## Introduction
Creates an ingressClass (and Optional ingressClassParams) for use with AWS ALB Ingress Controller.

## Prerequisites
- Kubernetes >= v1.20 or EKS >= 1.16 or the following patch releases for Service type `LoadBalancer`
   - 1.18.18+ for 1.18
   - 1.19.10+ for 1.19
- aws-alb-ingress-controller >= 2.2.0

## Installing the Chart
**Note**: You need to install aws-alb-ingress-controller..


Install the AWS Load Balancer controller, if using iamserviceaccount
```shell script
helm install -i alb-ingress-class
```

## Configuration

The following tables lists the configurable parameters of the chart and their default values.

| Parameter                                   | Description                                                                                              | Default                                                                            |
| ------------------------------------------- | -------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| `ingressClass.name`                | Optional IngressClass name account                                                           | alb                                                                               |
| `ingressClass.parameters`                | Optional IngressClass parameters                                         | None                                                                          |
| `ingressClassParams.name`                     | Optional ingress class name account                                                           | `default`                                                                             |
| `ingressClassParams.create`                       | If true, creates the ingressClassParams                                                       | `false`                                                                               |
| `ingressClassParams.spec`             | ingressClassParams `spec`                                                 | None                                                                                 |
