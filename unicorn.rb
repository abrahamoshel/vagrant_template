work_directory "/vagrant"
pid "/vagrant/tmp/pids/unicorn.pid"
stderr_path "/vagrant/log/unicorn.log"
stdout_path "/vagrant/log/unicorn.log"

listen "/tmp/unicorn.app_name.sock" #or specify port number 3000
worker_processes 2
timeout 30
