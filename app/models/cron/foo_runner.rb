module Cron
  class FooRunner < Cron::TaskRunner
    def do_task
      puts "update all with Foo"
    end
  end
end