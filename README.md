## Fluid Relay
The Fluid Framework is an open source, platform independent framework. Azure Fluid Relay is a managed offering for the Fluid Framework that helps developers build real-time collaborative experiences and replicate state across connected JavaScript clients in real-time.

## Fluid Relay Terraform Module
The Terraform module of Fluid Relay supports creation of Azure Fluid Relay. The module is resuable and can be used in any DevOps or CI/CD platform.

## Module Variables
The variables used in the module are given below. Please refer the `variables.tf` file for detailes variables description.

| Variable Name | Variable Type |
|------|---------|
| create_resource_group | Optional |
| resource_group_name | Required |
| location | Optional |
| name | Required | 
| storage_sku | Optional |
| identity_type | Optional |
| identity_ids | Optional |
| tags | Optional |

## Module Usage
The below block of code demonstates provisioning of an Azure fluid relay in a new resource group.

```terraform

# Azurerm provider configuration
provider "azurerm" {
  features {}
}

# Provision an Azure Fluid Relay Server
module "fluid01" {
  source                = "../"
  create_resource_group = true
  resource_group_name   = var.rg_name
  location              = var.location
  name                  = "myflr01"
  tags = {
    Application = "Fluid Relay"
    Type        = "SaaS"
    Owner       = "Pranoy Bej"
  }
}

}


```

## Module Output
This module exports the following attributes

- `rg_id`    - The ID of the provisioned communication service.
- `frs_id`   - The ID of the Fluid Relay Server.
- `frs_pkey` - The primary key for this Fluid Relay server.
- `frs_skey` - The secondary key for this Fluid Relay server..