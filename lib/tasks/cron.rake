namespace :cron do
  task :foo, [:column] => :environment do |task, args|
    Cron::FooRunner.new(task).run
  end
  task :bar, [:column] => :environment do |task, args|
    Cron::BarRunner.new(task).run
  end
  task :hoge, [:column] => :environment do |task, args|
    Cron::HogeRunner.new(task).run
  end
end