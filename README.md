# makalexs_microservices
makalexs microservices repository

# Выполнено ДЗ №2
 - Работа с репозиторием _microservices
 - Создание интеграции с чатом для вышеуказанного репозитория и подключение TravisCI
 - Создание docker host
 - Создание своего образа
 - Работа с Docker Hub

## В процессе сделано:
 - Репозиторий _microservices клонирован на рабочую машину и работа ведется в директории docker-monolith, добавлен шаблон Pull Request
 - Установлен Docker и запущен первый контейнер
 - Отработали основные команды docker
 - *Сравнил вывод команд docker inspect, результат записал в docker-1.log
 - Настроена работа с GCE, через docker-machine создан docker host
 - Повторена практика namespace из лекции
 - Репозиторий _microservices выстроен как нужно, созданы основные файлы для создания контейнера и запуска на нем приложения, выполнена сборка образа и запуск контейнера
 - Настроена работа с Docker Hub, запушен первый образ, выполнен запуск контейнера из этого образа
 - *Реализована работа с Terraform, Ansible, Packer в директории ./infra, для работы с контейнерами

## PR checklist
 - Выставил label с темой домашнего задания


# Выполнено ДЗ №3
 - Научился описывать и собирать Docker-образы для сервисного приложения
 - Научился оптимизировать работу с Docker-образами
 - Выполнен запуск и работа приложения на основе Docker-образов, оценка удобства запуска контейнеров при помощи docker run

## В процессе сделано:
 - Выполнены подготовительные работы для запуска приложения: скачать и распаковах архив приложения, состоящий из 3 компонентов post, ui, comment
 - Созданы Dockerfiles для 3 компонентов post, ui, comment
 - Создан образ MongoDB
 - Прозведен запуск приложения
 - *Произведен перезапуск приложения с другими сетевыми алиасами
 - Улучшен образ ui
 - *Создан образ ui на основе Alpine
 - Перезапущено приложение с volume

## PR checklist
 - Выставил label с темой домашнего задания


# Выполнено ДЗ №4
 - Научился работать с сетями в Docker
 - Научился использовать docker-compose

## В процессе сделано:
 - Подготовил и настройл окружение
 - Запустил образы с drivers: none, host, bridge, просмотрел созданные namespaces
 - Создана новая docker сеть типа bridge, перезапущены контейнеры с новыми network aliases
 - Просмотрены созданные записи iptables на docker host
 - Установлен docker-compose, при помощи него запущено приложение (с использованием переменных)
 - Настроен новый префикс для контейнеров - COMPOSE_PROJECT_NAME=microservices
 - *Создан docker-composer.override.yml (подключение volume к ui, start puma with --debug and -w 2)

## PR checklist
 - Выставил label с темой домашнего задания
=======
# example
