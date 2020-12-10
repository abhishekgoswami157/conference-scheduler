class Track
  def initialize
    # @track = nil
    @sessions = []
  end

  def add_sessions(talk)
    @sessions << talk
  end

  def display_session
    track = "\nTrack 1 \n"
    @sessions.each do |session|
      track += "\n#{session}\n"
    end
    track
  end
  
end