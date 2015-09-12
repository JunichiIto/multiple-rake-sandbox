require_relative 'process_checkable'
include ProcessCheckable

namespace :foo do
  task :update_all, [:column] => :environment do |task, args|
    next if task_already_running?(task)
    puts "update all with Foo"
  end
end