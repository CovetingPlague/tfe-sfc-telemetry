terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "~> 0.25.18"
    }
  }
}

provider "snowflake" {
  // required
  account = "sva13985"
  region  = "us-east-1"

  //region info can be found in https://docs.snowflake.com/en/user-guide/admin-account-identifier.html#snowflake-region-ids

  // optional
  role = "ACCOUNTADMIN"
}

provider "snowflake" {
  alias   = "securityadmin"
  role    = "SECURITYADMIN"
  account = "sva13985"
  region  = "us-east-1"
}