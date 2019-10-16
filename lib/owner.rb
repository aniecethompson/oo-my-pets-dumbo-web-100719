require 'pry'

class Owner
  attr_reader :name, :species, :cat
  @@all =[]
  
  def initialize(name)
    @name= name
    @species
    @@all << self
  end
  
  def species
    "human"
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    @@all= []
  end
  
  def cats 
  Cat.all.select do |cat|
    
    binding.pry
    Cat.all.name == @name
  end
  end
end