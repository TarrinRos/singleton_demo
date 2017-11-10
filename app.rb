class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end
  # class method
  def self.say_something
    puts 'HAHA!'
  end
# instance method
  def log_something what
    @f.puts what
  end
end

Logger.say_something

logger = Logger.new
logger.log_something 'hello me'
