## Terraform (Azure):
Create two Azure Service Bus Namespaces (ASBN) in each of the three environments
(test, staging, production), ensure that:
- each ASBN is provisioned in a dedicated Resource Group;
- each ASBN account has two Queues;
- each ASBN has tags that show cost centre and a product name it belongs to;
- resources are protected from accidental deletion;
- terraform modules are not used (just a "flat" terraform project);
- there are might be many more ASBNs in each environment with many more Queues in each ASBN;
  
There are different ways to structure and run the project. To simplify the task and
focus on showing your terraform code skills, have one ".tfstate" file, and three
variables (one per environment) in a single ".tfvars" file which will describe all your
ASBNs in each particular environment.

Feel free to replace ASBN with any other resource of your choice, preferably Azure. We
expect you to demonstrate your ability to use nested data structures, therefore make
sure you have a root level resource and a number of nested resources (and no
dynamic blocks!)
