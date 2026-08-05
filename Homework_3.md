Задание 1.

Ответ:
https://hub.docker.com/repository/docker/ayrin25/customes-nginx/general
```
root@ubuntu1-1:/home/mulenkoi# curl http://localhost:8080
<html>
<head>
Hey, Netology
</head>
<body>
<h1>I will be DevOps Engineer!</h1>
</body>
</html>
```

Задача 2

Ответ:
<img width="1566" height="411" alt="задание2" src="https://github.com/user-attachments/assets/217f373d-b24a-44aa-9f2b-ed305a51138b" />

Задача 3

Ответ:

<img width="1248" height="702" alt="image" src="https://github.com/user-attachments/assets/a3939e2e-ab1a-4ea0-adde-35f01972e528" />
<img width="1035" height="343" alt="image" src="https://github.com/user-attachments/assets/714c1e1a-9991-48a0-9764-066ef8aa08b0" />
<img width="1014" height="212" alt="image" src="https://github.com/user-attachments/assets/42d2a0bd-ec71-4e39-81cc-6de86438271c" />
<img width="1277" height="313" alt="image" src="https://github.com/user-attachments/assets/e34243ce-837e-4090-a70d-22d662800bbe" />
<img width="1767" height="378" alt="image" src="https://github.com/user-attachments/assets/c0a21ba5-95b1-4b38-b840-c26ee23fa519" />
После отправки Ctrl-C в прикреплённом терминале, сигнал SIGINT отправился процессу с PID 1 внутри контейнера, то есть главному процессу nginx, тот прекратил свою работу, так как это основной процесс контейнера, то и контейнер после его остановки, перешел в статус завершен.
Краткая суть замены порта в конфиге контейнера /etc/nginx/conf.d/default.conf - Изменен порт на котором nginx слушает внутри контейнера, 81 вместо 80. При этом на хосте по-прежнему проброшен порт 8080 -> 80 как мы запускали первоначально, поскольку внутри контейнера порт 80 уже не слушается, запросы на http://127.0.0.1:8080 перестанут работать.

Задача 4

Ответ:

<img width="1028" height="926" alt="image" src="https://github.com/user-attachments/assets/62a5550b-9312-4202-94b2-72ee8dc779cb" />

Задача 5

Ответ:
<img width="884" height="257" alt="image" src="https://github.com/user-attachments/assets/43a19ad4-8ee4-4706-83d3-e4a49777c51e" />
<img width="1855" height="914" alt="image" src="https://github.com/user-attachments/assets/6a17719c-1a45-46ee-af67-6f66d73b97ba" />
<img width="1609" height="254" alt="image" src="https://github.com/user-attachments/assets/512ffd78-79fc-48b6-8006-6ad2bf1d5767" />
<img width="1351" height="334" alt="image" src="https://github.com/user-attachments/assets/6cfd7053-6fb0-445e-9de1-c2545e1169f1" />
<img width="1375" height="686" alt="image" src="https://github.com/user-attachments/assets/6f253744-1ec3-4fe3-aa31-46f096bb715a" />
<img width="1545" height="933" alt="image" src="https://github.com/user-attachments/assets/b6ec25a1-8959-478c-a54c-1c2826aeabf6" />
<img width="1501" height="292" alt="image" src="https://github.com/user-attachments/assets/cbb7c05b-b70d-47fa-9d1d-bd3c482e1cc9" />
<img width="1482" height="382" alt="image" src="https://github.com/user-attachments/assets/85df3aee-5d54-49f3-a378-b83bae366fed" />
<img width="1147" height="452" alt="image" src="https://github.com/user-attachments/assets/bfd52db7-db2e-4da7-b020-a29060f8a91f" />

Есть у меня подозрение что предупреждения ожидаемые в предпоследнем пункте должны были быть другими, но было ток то что на скрине)


