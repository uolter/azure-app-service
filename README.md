# Azure App Service

This repository has an example of terraform code useful to build a very basic [App Service](https://azure.microsoft.com/en-us/services/app-service/) with a Azure DevOps pipeline which apply the changes.

The DevOps pipeline id 


### Note
When you define the pipeline do not forget to define the following vairables:

* **subscriptionId**: azure subscription id
* **tenantId**: azure tenant id
* **clientId**: azure client id
* **clientSecret**: azure secret
* **env** 

### Important

The current example do not store the terraform status file in a blob.
In a production ready environment the state should be stored in [Azure Storage](https://docs.microsoft.com/en-us/azure/terraform/terraform-backend)

