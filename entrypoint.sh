#!/bin/sh

# Checking if Openfire Data Folder Exists
if [ ! -d "${OPENFIRE_DATA_DIR}" ]; then
  # Creating an Openfire Data Folder
  mkdir -p "${OPENFIRE_DATA_DIR}"
  chown -R 1000:1000 "${OPENFIRE_DATA_DIR}"
fi

# Launching Openfire
exec /usr/local/openfire/bin/openfire "$@"
