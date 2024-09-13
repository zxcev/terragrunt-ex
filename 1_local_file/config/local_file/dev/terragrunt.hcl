include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/local_file"
}

inputs = {
  file_contents = "This is a dev environment file"
}
