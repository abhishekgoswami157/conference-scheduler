require_relative "talks"

class Session
  attr_reader :talks, :year, :month, :day, :availabe_minutes

  def initialize(talks)
    @talks = talks
    @year, @month, @day = 2020, 12, 10
    @available_minutes = nil

  end

  def morning_sessions
    @start_time = Time.local(@year, @month, @day, 9)
    @end_time = Time.local(@year, @month, @day, 12)
    puts @availabe_minutes = (@end_time.to_i - @start_time.to_i) / 60
    @talks.each do |talk, time|
      if time <= @availabe_minutes
        puts "#{@start_time.strftime("%I:%M %p")} #{talk} #{time}"
        @availabe_minutes -= time
        @start_time += time * 60
      end
    end

  end

  def afternoon_sessions
    @start_time = Time.local(year, month, day, 13)
    @end_time = Time.local(year, month, day, 17)
    availabe_minutes = (@start_time.to_i - @end_time.to_i)
  end

end


Session.new(Talks::TALKS).morning_sessions
