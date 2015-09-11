module Cron
  class TaskRunner
    def self.run(task)
      process_count = `ps -ef | grep #{task.name} | grep -v grep | wc -l`.to_i
      return if process_count >= 3
      yield
    end
  end
end