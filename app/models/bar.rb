class Bar
  def self.update_all(task)
    Cron::TaskRunner.run(task) do
      puts "update all with Bar"
    end
  end
end