// We need to define the action group

data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

resource "azurerm_monitor_action_group" "email_alert" {
  name                = "email-alert"
  resource_group_name = var.resource_group_name
  short_name          = "email-alert"

  email_receiver {
    name                    = "sendtoAdmin"
    email_address           = var.email_address
    use_common_alert_schema = true
  }

}

resource "azurerm_consumption_budget_resource_group" "Monthly_budget" {
  name              = "Monthly_budget_adf"
resource_group_id = data.azurerm_resource_group.rg.id

  amount     = 20
  time_grain = "Monthly"

  time_period {
    start_date = "2024-04-01T00:00:00Z"
    end_date   = "2026-12-01T00:00:00Z"
  }

  notification {
    enabled        = true
    threshold      = 70.0
    operator       = "EqualTo"
    threshold_type = "Forecasted"


    contact_groups = [
      azurerm_monitor_action_group.email_alert.id,
    ]
  }
}