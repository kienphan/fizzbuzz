# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "/home/kienphan/SitesRoR/fizzbuzz"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/home/kienphan/SitesRoR/fizzbuzz/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "/home/kienphan/SitesRoR/fizzbuzz/log/unicorn.log"
stdout_path "/home/kienphan/SitesRoR/fizzbuzz/log/unicorn.log"

# Unicorn socket
#listen "/tmp/unicorn.[fizzbuzz].sock"
listen "/tmp/unicorn.fizzbuzz.sock"

# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30