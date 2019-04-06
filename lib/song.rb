class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  def self.create
    song = Song.new
    song.save
    song
  end
  def self.new_by_name(song.name)
    song = self.new
    song.name = song.name
    song
  end
  def self.create_by_name(song.name)
    song = self.create
    song
  end
  def self.find_by_name(song.name)
    self.all.detect{|s|s.name == song.name}
  end
  def self.find_or_create_by_name(song.name)
    self.find_by_name(song.name)|| self.create_by_name(song.name)
  end
