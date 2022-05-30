# skeleton

## Глоссарий

`client` - клиент (устройство), которым управляет сервер\
`server` - сервер для управления клиентом\
`webview` - интерфейс для взаимодействия с сервером

## Docker

1) Поднять docker контейнеры

    ```bash
    make docker-up
    ```

2) Остановить docker контейнеры

    ```bash
    make docker-down
    ```

3) Перезапустить docker контейнеры

    ```bash
    make docker-restart
    ```

4) Зайти в контейнер с Node.js

    ```bash
    make docker-node
    ```

## Client

1) Установить зависимости

    ```bash
    make client-install
    ```

## Server

1) Установить зависимости

    ```bash
    make server-install
    ```

2) Поднять сервер (<http://localhost:1002/>)

    ```bash
    make server-up
    ```

## Webview

1) Установить зависимости

    ```bash
    make webview-install
    ```

2) Поднять сервер (<http://localhost:1003/>)

    ```bash
    make webview-up
    ```

3) Скомпилировать исходники

    ```bash
    make webview-build
    ```

4) Запустить компиляцию исходников в watch режиме

    ```bash
    make webview-watch
    ```
