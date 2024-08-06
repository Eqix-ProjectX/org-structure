resource "random_pet" "this" {
  length = 3
}

resource "equinix_metal_project" "apac" {
  name            = "${random_pet.this.id}-metal-apac"
  organization_id = var.org_id
}
