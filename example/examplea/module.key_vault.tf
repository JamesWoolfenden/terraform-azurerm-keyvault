module "key_vault" {
  source = "../../"
   tenant_id = "8e7f742a-4215-44a0-881b-209124f286b1"
   key_name="pike"
   tags={
    pike="permissions"
   }
}
