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
  description = "Vault Secret Engine"
}

variable "impersonator_static_account" {
  type        = string
  description = "Vault Impersonator Static Account"
}

variable "executor_service_account" {
  type        = string
  description = "Email of the SA to be impersonated"
}

variable "project_id" {
  type = string
}