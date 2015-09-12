namespace :bar do
  task :update_all, [:column] => :environment do |task, args|
    process_count = `ps -ef | grep #{task.name} | grep -v grep | wc -l`.to_i
    next if process_count >= 3
    puts "update all with Foo"
  end
end