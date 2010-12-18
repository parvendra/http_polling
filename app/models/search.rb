class Search
  attr_reader :status
  def initialize
    @status = 0
  end
  def start
    Thread.new do
      while @status < 100
        sleep 1
        @status += 5
      end
    end
  end
end
