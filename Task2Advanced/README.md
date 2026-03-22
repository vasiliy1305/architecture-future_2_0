## реализовано:
- Terraform-конфигурация с backend s3
- удалённое хранение состояния в S3-compatible хранилище
- CI/CD pipeline на GitHub Actions
- автоматические шаги `terraform fmt`, `terraform init`, `terraform validate`, `terraform plan`
- ручной запуск `terraform apply` через `workflow_dispatch`
- передача секретов и параметров backend через переменные CI/CD
- исключение локального state и секретов из Git


## CI/CD

Для Terraform-проекта настроен pipeline на GitHub Actions в файле `.github/workflows/terraform.yml`.

Pipeline поддерживает:
- `terraform init`
- `terraform plan`
- `terraform apply`

Поведение:
- при `push` и `pull_request` для `Task2Advanced/**` выполняются `terraform fmt`, `terraform init`, `terraform validate`, `terraform plan`;
- `terraform apply` запускается вручную через `workflow_dispatch`, что соответствует запуску "по кнопке".

Для job `terraform-apply` используется `environment: dev`, что позволяет включить ручное подтверждение (approval) перед выполнением `apply`.