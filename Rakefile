require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

namespace :npm do
  task :copy do
    sh 'rm -rf vendor/assets/stylesheets/emma.css/'
    sh 'mkdir vendor/assets/stylesheets/emma.css/'
    sh 'mkdir vendor/assets/stylesheets/emma.css/sass/'
    sh 'cp node_modules/emma.css/emma.css vendor/assets/stylesheets/emma.css/emma.css'
    sh 'cp -r node_modules/emma.css/sass/ vendor/assets/stylesheets/emma.css/sass/'
    sh "sed -n '1,1p' vendor/assets/stylesheets/emma.css/emma.css"
  end
end

task :default => :spec
