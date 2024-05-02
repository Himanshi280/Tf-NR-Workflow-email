policy-name = "workflow-policy"
destination = {
  name = "email-destination"
  type = "EMAIL"


  key   = "email"
  value = "himanshisoni2805@gmail.com"

}
notification = {
  name    = "email-notification-channel"
  type    = "EMAIL"
  product = "IINT"


    key   = "subject"
    value = "Workflow Alert"
  
}
workflow = {
  name                  = "workflow_1"
  muting_rules_handling = "NOTIFY_ALL_ISSUES"

#   issues_filter = {
    name1 = "Filter-name"
    type = "FILTER"

    # predicate = {
      attribute = "labels.policyIds"
      operator  = "EXACTLY_MATCHES"
    # }
#   }

#   destination = {
    notification_triggers = ["ACTIVATED"]
#   }
}