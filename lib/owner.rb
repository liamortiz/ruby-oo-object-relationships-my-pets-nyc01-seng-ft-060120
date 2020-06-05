require_relative './cat.rb'
require_relative './dog.rb'
require 'pry'

class Owner
  attr_reader :name, :species
  @@all = []
  
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
  
  def cats
    Cat.all.select{|cat| cat.owner == self}
  end
  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end
  
  def buy_cat(name)
    Cat.new(name)
  end
    
end