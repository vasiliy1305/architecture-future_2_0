## реализовано:
- Terraform-конфигурация с backend s3
- удалённое хранение состояния в S3-compatible хранилище
- CI/CD pipeline на GitHub Actions
- автоматические шаги `terraform fmt`, `terraform init`, `terraform validate`, `terraform plan`
- ручной запуск `terraform apply` через `workflow_dispatch`
- передача секретов и параметров backend через переменные CI/CD
- исключение локального state и секретов из Git


