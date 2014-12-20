# config valid only for current version of Capistrano
lock '3.3.5'

set :application, 'fizzbuzz'
set :repo_url, 'git@github.com:kienphan/fizzbuzz.git'

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/var/www/fizzbuzz'

# Default value for :scm is :git
set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
set :log_level, :debug

# Default value for :pty is false
set :pty, true

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml')

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('bin', 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/assets')

set :unicorn_pid, "#{shared_path}/tmp/pids/unicorn.pid"

# Default value for default_env is {}
set :default_env, { path: "~/.rbenv/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5

namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end
end
after after 'deploy:publishing', 'deploy:restart'
