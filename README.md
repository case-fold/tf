# tf
Terraform experiments

Token can be provided using the `GITHUB_TOKEN` env var. https://www.terraform.io/docs/providers/github/index.html#token

```
gomplate -f gh.tf.tmpl -o gh.tf -d config=config.yml
terraform plan
terraform apply
```
