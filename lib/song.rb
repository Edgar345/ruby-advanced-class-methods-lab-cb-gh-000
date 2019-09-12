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
    person
  end

  def self.create_by_name name
    person = self.new_by_name name
    person.save
    person
  end

  def self.find_by_name name
    self.all.find {|song| song.name == name}
  end

  def self.find_or_create_by_name name
    found_by_name = self.find_by_name(name)
    if (found_by_name)
      found_by_name
    else
      self.create_by_name(name)
    end
  end

  def self.alphabetical
    self.all.sort_by {|song| song.name} #sort_by returns a new array
  end

  def self.new_from_filename filename
    filename_arr = filename("-")
  end
end
