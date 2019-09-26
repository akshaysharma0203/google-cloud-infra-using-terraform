create firewall and an instance by implementing variable concepts.
run below 4 commands.
==> terraform init
==> terraform plan
==> terraform apply
==> terraform destroy

#lifecycle management. Use this link for more details on lifecycle management. https://www.terraform.io/docs/configuration/resources.html#lifecycle-lifecycle-customizations
use any of below options to understand the lifecycle of a resource


lifecycle {
    create_before_destroy = true
  }
  
Or

lifecycle {
    prevent_destroy = true
  }
  
or 
lifecycle {
    ignore_changes = true
  }
