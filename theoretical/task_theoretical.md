## Azure Kubernetes Services or Elastic Kubernetes Services ingress and egress:

Design an ingress solution and a virtual network for a number of REST API services
hosted on Azure Kubernetes Cluster.
Ingress requirements:
- client TLS session should be terminated on the kubernetes node pool that runs
the subject service (meaning encrypted from the client and up to the
kubernetes node);
- rate limit client requests based on a client API key (a client secret value
supplied in each HTTP request header);
- requests from a single client IP address are also rate limited;
- some of the API services are internal only (not available on the internet,
accessible from the same vNet or VPC only);
Egress requirements:
- components of the same API should have access to your on-premises MS SQL
database server which is not exposed on the public Internet;
- implement controls over access to on-prem data centre resources and to the
Internet from the API service;

You need to describe a solution that covers infrastructure between the internet clients
and the API service, and between the API service and the on-premises resources like
MS SQL database (up to your physical datacenter network equipment).
