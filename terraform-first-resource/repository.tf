resource "github_repository" "terraform-first-repo" {
  name        = "created-using-terraform"
  description = "My awesome Devops base"

  visibility = "public"
  auto_init  = true

}