terraform {
  backend "local" {
    path = "/terraform-states/github/01-secrets.tfstate"
  }

  required_providers {
    github = {
      source = "integrations/github"
    }
  }
}
