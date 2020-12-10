class Track
  def initialize(name)
    # @track = nil
    @name = name
    @sessions = []
  end

  def add_sessions(talk)
    @sessions << talk
  end

  def display_tracks
    track = "\nTrack #{@name} \n"
    @sessions.each do |session|
      track += "\n#{session}\n"
    end
    track
  end
  
end