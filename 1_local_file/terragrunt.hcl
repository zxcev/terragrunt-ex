locals {
  env = get_env("ENV", "dev")
}

remote_state {
  backend = "local"

  config = {
    path = "${get_parent_terragrunt_dir()}/state/${local.env}-terraform.tfstate"
  }

  generate = {
    path      = "${get_terragrunt_dir()}/backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}

inputs = {
  env           = local.env
  filename      = "generated_file"
  file_contents = "it's generated file contents by me"
}

generate "provider" {
  path      = "${get_terragrunt_dir()}/provider.tf"
  if_exists = "overwrite_terragrunt"

  contents = file(find_in_parent_folders("global_provider.tf"))
}
