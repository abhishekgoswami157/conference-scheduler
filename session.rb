require_relative "talks"

class Session
  def initialize(talks)
    @talks = talks
    @year, @month, @day = 2020, 12, 10
    @available_minutes = nil

  end

  def morning_sessions
    @start_time = Time.local(year, month, day, 9)
    @end_time = Time.local(year, month, day, 12)
    availabe_minutes = (@start_time.to_i - @end_time.to_i)

  end

  def afternoon_sessions
    @start_time = Time.local(year, month, day, 13)
    @end_time = Time.local(year, month, day, 17)
    availabe_minutes = (@start_time.to_i - @end_time.to_i)
  end

end


Session.new(Talks::TALKS)