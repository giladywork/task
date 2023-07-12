terraform {
  backend "remote" {
    organization = "Task"
    token        = "$TFC_TOKEN"

    workspaces {
      name = "$TF_WORKSPACE"
    }
  }
}
