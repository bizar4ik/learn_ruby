class Timer

  def initialize()
    @sec = 0
  end

  def seconds
    @sec
  end

  def seconds=(sec)
    @sec = sec
  end

  def time_to_str(temp)
   temp<9 ? "0#{temp}" : "#{temp}"
  end

  def time_string
    hour = @sec / 3600
    min = (@sec % 3600) / 60
    seconds= @sec - hour * 3600 - min * 60
    time_to_str(hour) + ":" + time_to_str(min) + ":" + time_to_str(seconds)
  end
end