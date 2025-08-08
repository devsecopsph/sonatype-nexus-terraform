# Folder Structure

``` python
terraform-nexus/
│
├── main.tf
├── variables.tf
├── terraform.tfvars
│
├── modules/
│   ├── nexus-user/
│   │   ├── main.tf
│   │   └── variables.tf
│   │
│   ├── nexus-role/
│   │   ├── main.tf
│   │   └── variables.tf
│   │
│   └── nexus-docker-repo/
│       ├── main.tf
│       └── variables.tf
│
├── locals.tf
└── initial_password.txt
```
