## Kubernetes and Helm:

You are creating a helm chart for a product that will be deployed in your Azure
Kubernetes Services environment:
- the product is an NGINX container pulled from the Docker Hub, it serves a
static webpage on port 80 (https://hub.docker.com/_/nginx);
- there is should be at least 2 replicas of the product pods, if pod crashes or
deleted it should be automatically re-created;
- disruption is acceptable, when required, the number of pod replicas can go
down to 1 (i.e. temporary reduction in node pool capacity due to a
maintenance) ;
- all objects should have labels that indicate name of the product and
development team that owns it;
- there is some product configuration (a few lines of text) that you need to be
able to change without rebuilding the container and has to be available from
inside each of the pods as a file;
- pods should be schedulable on nodes with label "dev_team: circle", pod replicas
should be spread across nodes and not be scheduled on the same node;
- pods should have Burstable QoS and horizontally scale from 2 to 3 replicas if
CPU average utilisation is over 80% from more than 5 minutes. Scaling up\down
actions should not be take more often than once in 10 minutes;
