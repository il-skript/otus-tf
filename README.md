## Установка terraform 
wget https://hashicorp-releases.yandexcloud.net/terraform/1.14.5/terraform_1.14.5_linux_amd64.zipunzip
terraform_1.14.5_linux_amd64.zip  
mv terraform /usr/sbin/  
terraform –v  
Terraform v1.14.5  
## Cоздание каталога проекта и инициализация terraform  
terraform init    
## Создание сервисного аккаунта и выдача прав на создание ресурсов.
yc resource-manager folder add-access-binding b1gkh81nngtp1c97fhk9 --role editor --subject serviceAccount:ajeqilau5rnl1d10oi35  
### Создание файла provider.tf
### Создание файла main.tf
### Создание файла output.tf
### Создание файла terraform.tfvars
### Создание файла variables.tf

### Проверка результата создания, вывода ip адресов, возможности входа по ssh ключу и последующее удаления машины из облака,Успешно.


