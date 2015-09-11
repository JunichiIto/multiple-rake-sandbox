class Foo
  def self.update_all(task)
    Cron::TaskRunner.run(task) do
      puts "update all with Foo"
    end
  end
end