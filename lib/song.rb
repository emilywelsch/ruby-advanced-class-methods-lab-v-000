require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def initialize(name)
      @name = name
      @@all << self
    end

  def self.create(name) #creates a new song, saves it to @@all
    name = self.new(@name)
  end

  def self.new_by_name
  end

  def self.create_by_name
  end

  def self.find_by_name
  end

  def self.find_or_create_by_name
  end

  def self.alphabetical # why does it want #sort_by when #sort will do?
    @@all.sort_by { |song| song.sort }
  end

  def self.new_from_filename
  end

  def self.create_from_filename
  end

  def self.destroy_all
    @@all.clear
  end

end
