provider "github" {
  organization = "case-fold"
}

resource "github_team" "test_team_0" {
  name        = "test-team-0"
  description = "Cool team created by tf"
  privacy     = "closed"
}

resource "github_team_membership" "test_team_0_ling" {
  team_id  = "${github_team.test_team_0.id}"
  username = "Emmawaterman"
  role     = "member"
}

resource "github_team_membership" "test_team_0_yl" {
  team_id  = "${github_team.test_team_0.id}"
  username = "yunzhu-li"
  role     = "member"
}
