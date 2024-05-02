terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
  account_id = 4411834
  api_key    = "NRAK-PYOFRHO15RY3IOAJ4DB19V8ZJ2N" # Usually prefixed with 'NRAK'
  region     = "US"                               # Valid regions are US and EU
}