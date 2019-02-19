provider "github" {
  organization = "case-fold"
}

# Teams and memberships
resource "github_team" "test_team_0" {
  name        = "test-team-0"
  description = "Cool team created by tf"
  privacy     = "closed"
}

resource "github_team_membership" "test_team_0_ling" {
  team_id  = "${github_team.test_team_0.id}"
  username = "Emmawaterman"
  role     = "maintainer"
}

resource "github_team_membership" "test_team_0_yl" {
  team_id  = "${github_team.test_team_0.id}"
  username = "yunzhu-li"
  role     = "maintainer"
}

# Repos
resource "github_repository" "tf_test" {
  name        = "tf-test"
  description = "Repo managed by Terraform"
}

resource "github_repository_collaborator" "tf_test_collaborator" {
  repository = "${github_repository.tf_test.name}"
  username   = "gkilleen"
  permission = "admin"
}

resource "github_team_repository" "some_team_repo" {
  team_id    = "${github_team.test_team_0.id}"
  repository = "${github_repository.tf_test.name}"
  permission = "admin"
}
