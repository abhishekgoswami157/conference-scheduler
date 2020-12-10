class Conference
  def initialize(session)
    @session = session
    @tracks = []
  end

  def schedule
    create_track("1")
    create_track("2")
    display_all_tracks
    display_remaining_talks
  end

  def create_track(name)
    track = Track.new(name)
    @session.morning_sessions(track)
    @session.afternoon_sessions(track)
    @tracks << track
  end

  def display_all_tracks
    @tracks.each do|track|
      puts track.display_tracks
    end
  end

  def display_remaining_talks
    @session.remaining_talks
  end
end