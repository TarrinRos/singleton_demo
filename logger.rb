require 'singleton'

# new class
class Logger
  include Singleton

  def initialize
    @f = File.open 'log.txt', 'a'
  end

  # instance method
  def log_something(what)
    @f.puts what
    # all changes writes on disk
    @f.flush
  end
end
