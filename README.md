# Introduction

This is the Week 1 Project Assignment of the SRE Fundamentals with Google course. 

The first part of the project is configuring Prometheus alerts for the K8s cluster. 

The configuration can be found in `prometheus.yml`file. 

The second part of the project is configuring Email and Slack notifications. The configmap can be found in `notification_config.yml` file. 

In the `notification_config.yml` configuration file, the values for the configuration were passed through GitHub Code Space's secrets. The Code Space secrets are:

1. AUTH_USERNAME
2. AUTH_PASSWORD
3. TO_USER
4. SLACK_WEBHOOK_URL

`configure_notifications.sh` was used to pass the values from the secrets to the YAML file during `kubectl apply` execution. 