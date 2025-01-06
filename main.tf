terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
    }
  }

  backend "remote" {
    organization = "Tawanda_Lloyd"

    workspaces {
      name = "gh_actions_demo"
    }
  }
}

provider "snowflake" {

}

resource "snowflake_database" "demo_db" {
  name    = "DEMO_DB"
  comment = "Database for Snowflake Terraform demo"
}


resource "snowflake_database" "dev_db" {
  name    = "ASSA_DW_DEV"
  comment = "ASSA DEV dwh "
}

resource "snowflake_database" "prod_db" {
  name    = "ASSA_DW_PROD"
  comment = "ASSA DEV dwh "
}