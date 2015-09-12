require_relative 'process_checkable'
include ProcessCheckable

namespace :bar do
  task :update_all, [:column] => :environment do |task, args|
    next if task_already_running?(task)
    puts "update all with Bar"
  end
end
