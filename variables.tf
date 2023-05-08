variable "vault_address" {
  type        = string
  description = "Vault URL address"
}

variable "vault_token" {
  type        = string
  description = "Vault Auth Token"
}

variable "vault_secret_engine" {
  type        = string
  description = "Vault Auth Token"
}

variable "vault_static_account" {
  type        = string
  description = "Vault Auth Token"
}

variable "service_account_to_impersonate_email" {
  type        = string
  description = "Email of the SA to be impersonated"
}