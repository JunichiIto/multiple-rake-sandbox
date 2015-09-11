module Cron
  class BarRunner < Cron::TaskRunner
    def do_task
      puts "update all with Bar"
    end
  end
end