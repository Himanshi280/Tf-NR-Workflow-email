variable "policy-name" {
  type = string
}
variable "destination" {
  type = object({
    name           = string
    type           = string
    # destination_id = number
    # product        = string
    key            = string
    value          = string

  })
}
variable "notification" {
  type = object({
    name           = string
    type           = string
    # destination_id = number
    product        = string
    key            = string
    value          = string
  })
}
variable "workflow" {
  type = object({
    name                  = string
    muting_rules_handling = string
    name1                  = string
    type                  = string
    attribute             = string
    operator              = string
    # values                = number
    # channel_id            = number
    notification_triggers = set(string)
  })
}