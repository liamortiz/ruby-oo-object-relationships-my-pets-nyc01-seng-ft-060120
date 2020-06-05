require_relative './cat.rb'
require_relative './dog.rb'

class Owner
  attr_reader :name, :species
  @@all = []
  @@cats = []
  @@dogs = []
  
  def initialize(name)
    @species = "human"
    @name = name
    @@all << self
  end
  
  def say_species
    "I am a human."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all = []
  end
  
  def buy_cat
    new_cat = Cat.new()
  end
end