export VAULT_ADDR='http://127.0.0.1:8200'
vault login 
# create secrets engine
vault secrets enable -path=gcp-sa-impersonation gcp
# download key for vault SA in JSON format
vault write  gcp-sa-impersonation/config credentials=@../../../gothic-airlock-385818-5753445b6aa9.json ttl=600 max_ttl=600
# create static account for impersonator
vault write gcp-sa-impersonation/static-account/tf-i-sa-admin service_account_email="tf-i-sa-admin@gothic-airlock-385818.iam.gserviceaccount.com" secret_type="service_account_key"
# optional - set shorter ttl
vault secrets tune -default-lease-ttl=1m -max-lease-ttl=1m gcp-sa-impersonation
