module "request-demo" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "bschreier+request-demo@bandwidth.com"
    AccountName               = "request-demo"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "bschreier+request-demo@bandwidth.com"
    SSOUserFirstName          = "request"
    SSOUserLastName           = "demo"
  }

  account_tags = {
    "Demo" = "AFT-account-vending"
  }

  change_management_parameters = {
    change_requested_by = "Brian Schreier"
    change_reason       = "Demo account vending via aft"
  }

  custom_fields = {
    group = "demo"
  }

  account_customizations_name = "sandbox"
}