#!/bin/sh

# Проверка, существует ли папка с данными Openfire
if [ ! -d "${OPENFIRE_DATA_DIR}" ]; then
  # Создание папки с данными Openfire
  mkdir -p "${OPENFIRE_DATA_DIR}"
  chown -R 1000:1000 "${OPENFIRE_DATA_DIR}"
fi

# Запуск Openfire
exec /usr/local/openfire/bin/openfire "$@"
