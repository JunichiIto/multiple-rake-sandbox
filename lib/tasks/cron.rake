namespace :cron do
  task :foo, [:column] => :environment do |task, args|
    Foo.update_all(task)
  end
  task :bar, [:column] => :environment do |task, args|
    Bar.update_all(task)
  end
  task :hoge, [:column] => :environment do |task, args|
    Hoge.update_all(task)
  end
end