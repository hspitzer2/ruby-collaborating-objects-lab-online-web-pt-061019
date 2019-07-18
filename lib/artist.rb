class Artist

    @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.all.find {|artist| artist.name = artist} || self.new(name)
  end
   def print_songs
     self.songs.each do |song| puts song.name
     end
   end
end
