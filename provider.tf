provider "vault" {
  address = var.vault_address
  token   = var.vault_token
}

data "vault_generic_secret" "get_sa_key" {
  path = "${var.vault_secret_engine}/static-account/${var.impersonator_static_account}/key"
}

provider "google" {
  credentials                 = base64decode(data.vault_generic_secret.get_sa_key.data["private_key_data"])
  impersonate_service_account = var.executor_service_account
}