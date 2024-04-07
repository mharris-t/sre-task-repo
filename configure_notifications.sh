#!/bin/bash

envsubst < notification_config.yml |kubectl apply -f - -n sre