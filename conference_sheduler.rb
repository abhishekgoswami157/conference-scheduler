require_relative "session"
require_relative "talks"
require_relative "conference"

session = Session.new(Talks::TALKS)
Conference.new(session).schedule
