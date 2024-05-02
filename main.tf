resource "newrelic_alert_policy" "policy" {

  name = var.policy-name
}

# resource "newrelic_alert_channel" "email_channel" {
#   name = "email_channel"
#   type = "email" 
#   config {
#     recipients              = "himanshisoni2805@gmail.com"

#   }  
# }
# resource "newrelic_alert_policy_channel" "foo" {
#   policy_id  = newrelic_alert_policy.policy.id
#   channel_ids = [
#     newrelic_alert_channel.email_channel.id

#   ]
# }
resource "newrelic_notification_destination" "foo" {
  name = var.destination.name
  type = var.destination.type

  property {
    key   = var.destination.key
    value = var.destination.value
  }
}
resource "newrelic_notification_channel" "foo" {

  name           = var.notification.name
  type           = var.notification.type
  destination_id = newrelic_notification_destination.foo.id
  product        = var.notification.product

  property {
    key   = var.notification.key
    value = var.notification.value
  }


}
resource "newrelic_workflow" "workflow" {
  name                  = var.workflow.name
  muting_rules_handling = var.workflow.muting_rules_handling

  issues_filter {
    name = var.workflow.name1
    type = var.workflow.type

    predicate {
      attribute = var.workflow.attribute
      operator  = var.workflow.operator
      values    = [newrelic_alert_policy.policy.id]
    }
  }

  destination {
    channel_id            = newrelic_notification_channel.foo.id
    notification_triggers = var.workflow.notification_triggers
  }
}