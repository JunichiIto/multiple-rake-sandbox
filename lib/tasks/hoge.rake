require_relative 'rake_helpers'

namespace :hoge do
  task :update_all, [:column] => :environment do |task, args|
    next if task_already_running?(task)
    puts "update all with Hoge"
  end
end