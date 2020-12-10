require_relative "session"
require_relative "talks"

session = Session.new(Talks::TALKS)
puts session.morning_sessions
puts session.afternoon_sessions
