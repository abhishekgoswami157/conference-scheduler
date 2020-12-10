require_relative "session"
require_relative "talks"

session = Session.new(Talks::TALKS)
session.morning_sessions
session.afternoon_sessions
