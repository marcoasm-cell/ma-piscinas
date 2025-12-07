# /var/www/myapp/config/puma.rb
environment "production"
bind "tcp://127.0.0.1:3002"
pidfile "/var/www/ma-piscinas/tmp/pids/puma.pid"
state_path "/var/www/ma-piscinas/tmp/pids/puma.state"
stdout_redirect "/var/www/ma-piscinas/log/puma.stdout.log", "/var/www/ma-piscinas/log/puma.stderr.log", true
workers 2
threads 1, 6
preload_app!
