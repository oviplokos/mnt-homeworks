# Clickhouse и Vector

## Что делает плейбук
  
1. Устанавливает Clickhouse client , server , common
2. Запускает сервер и создает базу данных Clickhouse
3. УстанавлИвает Vector
4. Копирует настройки из vector.toml.j2
5. Запускает Vector

## Запуск

Для запуска плейбука необходимо создать две машины под управлением centos 7+ , настоить ssh подключение 
заполнить prod.yml именем машины и ip адресом, затем запустить команду на хосте 
```ansible-playbook site.yml -i ./inventory/prod.yml --diff```
