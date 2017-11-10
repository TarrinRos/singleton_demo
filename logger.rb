# new class
class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end
  # class variable
  @@x = Logger.new

  def self.instance
  # retruns class var
    @@x
  end

  # instance method
  def log_something(what)
    @f.puts what
  end

  private_class_method :new
end
