# google-cloud-infra-using-terraform
understanding terraform concepts by provisioning google cloud (GCP) infra

1. Singleinstance ==> basic terraform script to create a single compute engine VM instance with default VPC and a custom firewall.

2. instancewithvariables  => terraform script with variables to create a single compute engine VM instance with default VPC and a custom firewall.

3. module_example_environment_deployment  => modular approach to create infra for dev/uat/prod environment.


|-- module_example_environment_deployment
|   |-- main.tf
|   |-- modules
|   |   |-- environment
|   |   |   |-- dev
|   |   |   |   |-- main.tf
|   |   |   |-- prod
|   |   |   |   -- main.tf
|   |   |   `-- uat
|   |   |       `-- main.tf
|   |   `-- virtualcloud
|   |       |-- main.tf
|   |       `-- variables.tf
|-- instancewithvariables
|   |-- main.tf
|   |-- outputs.tf
|   `-- vars.tf
|-- secrets
|   `-- credentials.json
`-- singleinstance
    |-- main.tf
