class Timer
  attr_accessor :seconds
  attr_reader :time_string

  def initialize
    @seconds = 0
  end

  def two_digit (number)
    output = number.to_s
    if output[1] == nil
      output = "0" + output
    end
    output
  end

  def time_string 
    @time_string = two_digit((seconds/3600)%60) + ":" + two_digit((seconds/60)%60) + ":" + two_digit(seconds%60)
  end
end
