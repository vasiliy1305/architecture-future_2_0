структура проекта:

/TaskAdvanced1/
  ├── modules/
  │   └── vm/
  │       ├── main.tf
  │       ├── variables.tf
  │       └── outputs.tf
  └── envs/
      ├── dev/
      ├── stage/
      └── prod/


Установка:
sudo snap install terraform --classic

Проверка:
../architecture-future_2_0/Task1Advanced/envs/dev$ 
rm -rf .terraform .terraform.lock.hcl
terraform init
terraform validate
- Success! The configuration is valid.
terraform plan -var-file=dev.tfvars

yc vpc subnet list
+----------------------+-----------------------+----------------------+----------------+---------------+-----------------+
|          ID          |         NAME          |      NETWORK ID      | ROUTE TABLE ID |     ZONE      |      RANGE      |
+----------------------+-----------------------+----------------------+----------------+---------------+-----------------+
| e2lfep63dfhs8htgp6qm | default-ru-central1-b | enpsj8dnmbnbrik04bv6 |                | ru-central1-b | [10.129.0.0/24] |
| e9bti4td78csekjn91kf | default-ru-central1-a | enpsj8dnmbnbrik04bv6 |                | ru-central1-a | [10.128.0.0/24] |
| fl8617sg432e50cc22jc | default-ru-central1-d | enpsj8dnmbnbrik04bv6 |                | ru-central1-d | [10.130.0.0/24] |
+----------------------+-----------------------+----------------------+----------------+---------------+-----------------+

ID: e9bti4td78csekjn91kf
NAME: default-ru-central1-a
ZONE: ru-central1-a


Terraform backend - S3
Storage - Yandex Object Storage
CI/CD - GitHub Actions

мигрирую на yc:
curl https://storage.yandexcloud.net/yandexcloud-yc/install.sh | bash