
resource "cloudfoundry_space" "project_space" {
  name = lower(replace("PROD-${var.project_name}", " ", "-"))
  org  = var.cf_org_id
}

resource "cloudfoundry_space_role" "space_supporter" {
  username = var.cf_space_supporter
  type     = "space_supporter"
  space    = cloudfoundry_space.project_space.id
  origin   = "sap.ids"
}
