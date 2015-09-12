def task_already_running?(task)
  process_count = `ps -ef | grep #{task.name} | grep -v grep | wc -l`.to_i
  process_count >= 3
end