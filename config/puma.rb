if File.directory?("/var/www/ma-piscinas")
  # Production server (/var/www/ma-piscinas)
  environment "production"
  bind "tcp://127.0.0.1:3002"
  pidfile "/var/www/ma-piscinas/tmp/pids/puma.pid"
  state_path "/var/www/ma-piscinas/tmp/pids/puma.state"
  stdout_redirect "/var/www/ma-piscinas/log/puma.stdout.log", "/var/www/ma-piscinas/log/puma.stderr.log", true
  workers 2
  threads 1, 6
  preload_app!
else
  # Local development
  threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
  threads threads_count, threads_count
  port ENV.fetch("PORT") { 3000 }
  environment ENV.fetch("RAILS_ENV") { "development" }
  pidfile ENV.fetch("PIDFILE") { "tmp/pids/server.pid" }
  worker_timeout 3600
  plugin :tmp_restart
end
