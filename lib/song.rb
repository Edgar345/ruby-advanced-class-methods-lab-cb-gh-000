class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  # class methods
  def self.create
    person = Song.new
    person.save
  end
end
