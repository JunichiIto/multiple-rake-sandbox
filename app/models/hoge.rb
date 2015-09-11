class Hoge
  def self.update_all(task)
    Cron::TaskRunner.run(task) do
      puts "update all with Hoge"
    end
  end
end