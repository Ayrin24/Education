<img width="548" height="88" alt="image" src="https://github.com/user-attachments/assets/9cf760c4-5ff8-46df-b35f-9dc0ee0f4b90" />


Задание 1
Ответ:
1.1 <img width="1170" height="535" alt="image" src="https://github.com/user-attachments/assets/9b4bfc82-bd9e-416f-b1f1-19b4aa9e83f7" />


1.2 В данном файле .gitignore нет заданного в явной форме файла для сохранения чувствительных данных. Есть только комментарий что такой стоит создать отдельно # own secret vars store. 
Обычно такие данные размещают в файле *.tfvars и в файле .gitignore их также обязательно стоит указать.


1.3 "result": "xuSC7AUR20hp1TVw" <img width="683" height="116" alt="image" src="https://github.com/user-attachments/assets/7da01cf2-a0fa-43a3-bc97-144b670ab955" />


1.4 

<img width="808" height="391" alt="image" src="https://github.com/user-attachments/assets/1b399b82-3184-4e95-bb06-de566b94ba6f" />


Первая ошибка, не указано имя ресурса, точнее второй лейбл для ссылки в моем случае это стало docker_image.nginx. 
Втора ошибка связана с некорректным указание имени контейнера он не может начинаться с цифры. 
Третья ошибка связана с неправильным именем ресурса на который ссылается команда, у нас объявлен один а указан другой и атрибут тоже указан неправильно.
random_password.random_string_FAKE должно быть random_password.random_string 
resulT = result


1.5 

<img width="993" height="166" alt="image" src="https://github.com/user-attachments/assets/196ba141-298e-42b0-89bf-95ffeff2043d" /> 


```
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
}

resource "docker_container" "nginx_container" {
  image = docker_image.nginx.image_id
  name  = "example_${random_password.random_string.result}"

  ports {
    internal = 80
    external = 9090
  }
}
```


1.6 

<img width="865" height="68" alt="image" src="https://github.com/user-attachments/assets/01d7c080-63c5-48cf-ad92-0cad4d18eeb4" />


Проблема использования -auto-approve убирает ручное подтверждение плана изменений, что может привести к удалению, утечке и потере данных или простою сервисов из-за ошибки изменений или неправильной конфигурации, тем более если план содержит destroy.
Использовать можно в автоматизации процессов CI/CD, либо на стендах где проблемы не критичны и их можно безболезненно откатить. Либо сейчас когда я занимаюсь учебным процессом. (Сделаю плохо, запомню)


1.7 

<img width="590" height="170" alt="image" src="https://github.com/user-attachments/assets/a756e55b-941c-440f-b7b3-34d975ffb490" />


1.8 У нас в конфиге написано (keep_locally = true) 
keep_locally (Boolean) If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker local storage on destroy operation.


Задание 2

Ответ:
Код в директории src/01 Ответ с хоста
<img width="1348" height="117" alt="image" src="https://github.com/user-attachments/assets/e15645ec-7b32-41b5-991f-1713d13c8cc9" />
Выполнение на сервере 
<img width="943" height="270" alt="image" src="https://github.com/user-attachments/assets/5f9cb908-7f74-4c0e-a547-843face6c97e" />


