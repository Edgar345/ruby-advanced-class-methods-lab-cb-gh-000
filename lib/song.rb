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
    person = self.new
    person.save
    person
  end

  def self.new_by_name name
    person = self.new
    person.name = name
    person.save
    person
  end
end
