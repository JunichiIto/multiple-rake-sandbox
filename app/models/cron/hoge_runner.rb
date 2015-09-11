module Cron
  class HogeRunner < Cron::TaskRunner
    def do_task
      puts "update all with Hoge"
    end
  end
end