terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "~> 0.25.18"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "3.1.0"
    }
  }
  backend "remote" {
    organization = "tfe-sfc-telemetry"

    workspaces {
      name = "tfe-sfc-telemetry"
    }
  }
}

provider "snowflake" {
  // required
  account  = "sva13985"
  region   = "us-east-1"
  username = "prune"

  //region info can be found in https://docs.snowflake.com/en/user-guide/admin-account-identifier.html#snowflake-region-ids

  // optional
  role = "ACCOUNTADMIN"
}

provider "snowflake" {
  alias    = "security_admin"
  role     = "SECURITYADMIN"
  account  = "sva13985"
  region   = "us-east-1"
  username = "prune"
}

provider "tls" {
}