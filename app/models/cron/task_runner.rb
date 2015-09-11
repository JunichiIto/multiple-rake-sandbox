module Cron
  class TaskRunner
    def initialize(task)
      @task = task
    end

    def run
      process_count = `ps -ef | grep #{@task.name} | grep -v grep | wc -l`.to_i
      return if process_count >= 3
      do_task
    end

    def do_task
      # Override in sub classes
    end
  end
end