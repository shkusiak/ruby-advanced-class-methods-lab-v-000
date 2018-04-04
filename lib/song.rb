class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

#Build a class constructor Song.create that initializes a song and saves it
#to the @@all class variable either literally or through the class method
#Song.all. This method should return the song instance that was initialized and saved.
  def self.create
    song = self.new
    song.save
    song
  end

#Build a class constructor Song.new_by_name that takes in the string name of a
#song and returns a song instance with that name set as its name property.
#Song.new_by_name should return an instance of Song and not a simple string or anything else.
  def self.new_by_name(song_name)
    song = self.new
    song.name = song_name
    song
  end

#Build a class constructor Song.create_by_name that takes in the string name of
# a song and returns a song instance with that name set as its name property
#and the song being saved into the @@all class variable.
  def self.create_by_name(song_name)
    song = self.create
    song.name = song_name
    song
  end

#Build a class finder Song.find_by_name that accepts the string name of a song
#and returns the matching instance of the song with that name.
  def self.find_by_name(song_name)
    self.all.detect{|song| song.name == song_name}
  end

  def self.destroy_all
    self.all.clear
  end
end
