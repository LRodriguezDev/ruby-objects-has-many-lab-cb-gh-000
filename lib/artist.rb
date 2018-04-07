class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @@song_count += 1
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def add_song_by_name(song_name)
    @@song_count += 1
    song = Song.new(song_name)
    @songs << song
    song.artist = self
    song
  end

  def self.song_count
    @@song_count
  end
end
