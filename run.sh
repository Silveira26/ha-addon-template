#!/usr/bin/with-contenv bashio

# Read config values using Bashio
LOG_MESSAGE=$(bashio::config 'log_message')

# Export as environment variables
export LOG_MESSAGE

# Log values (excluding sensitive info)
bashio::log.info "Starting Home Assistant Addon from run.sh..."
bashio::log.info "Placeholder log message: ${LOG_MESSAGE}"

source ./venv/bin/activate

# Run the Python script without `exec`
python3 /main.py
