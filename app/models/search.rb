class Search
  attr_accessor :status
  def initialize
    @status = 0
  end
  def start
    Thread.new do
      while @status < 100
        sleep 1
        @status += 2
      end
    end
  end
end
