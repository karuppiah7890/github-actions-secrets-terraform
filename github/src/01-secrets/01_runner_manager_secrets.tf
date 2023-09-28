provider "github" {
    owner = "TogaiHQ"
}

module "service_repo_secrets" {
    source = "./modules/runner-manager-secrets"
    # this is just an example, you can add many more services here!
    for_each = toset( ["ingestion", "core-service", "invoice-service"] )

    repository = each.value
    runner_manager_aws_access_key_id = var.runner_manager_aws_access_key_id
    runner_manager_aws_secret_access_key = var.runner_manager_aws_secret_access_key
    runner_manager_security_group_id = var.runner_manager_security_group_id
    runner_manager_subnet_id = var.runner_manager_subnet_id
    runner_manager_github_token = var.runner_manager_github_token
    runner_manager_aws_region = var.runner_manager_aws_region
}
