#!bin/bash

cd frappe-bench

# Use containers instead of localhost
bench set-mariadb-host mariadb
bench set-redis-cache-host redis:6379
bench set-redis-queue-host redis:6379
bench set-redis-socketio-host redis:6379

bench new-site lms.localhost \
--force \
--mariadb-root-password 123 \
--admin-password admin \
--no-mariadb-socket

bench --site lms.localhost install-app lms
bench --site lms.localhost set-config developer_mode 1
bench --site lms.localhost clear-cache
bench --site lms.localhost set-config mute_emails 0
bench use lms.localhost

bench start
