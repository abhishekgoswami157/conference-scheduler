require_relative "talks"

class Session
  def initialize(talks)
    @talks = talks
end


Session.new(Talks::TALKS)