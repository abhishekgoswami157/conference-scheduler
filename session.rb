require_relative "talks"
require_relative "track"

class Session
  attr_reader :talks, :year, :month, :day, :availabe_minutes

  def initialize(talks)
    @talks = talks
    @year, @month, @day = 2020, 12, 10
    @available_minutes = nil
    @track = Track.new

  end

  def morning_sessions
    @start_time = Time.local(@year, @month, @day, 9)
    @end_time = Time.local(@year, @month, @day, 12)
    handle_scheduling
  end

  def afternoon_sessions
    @start_time = Time.local(year, month, day, 13)
    @end_time = Time.local(year, month, day, 17)
    handle_scheduling
  end

  def handle_scheduling
    @availabe_minutes = (@end_time.to_i - @start_time.to_i) / 60
    add_track
  end

  def add_track
    @talks.each do |talk, time|
      if time <= @availabe_minutes
        @track.add_sessions("#{@start_time.strftime("%I:%M %p")} #{talk} #{time}")
        @availabe_minutes -= time
        @start_time += time * 60
      end
    end
    @track.display_session
  end

end


