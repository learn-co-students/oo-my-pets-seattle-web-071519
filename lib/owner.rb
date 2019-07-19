require 'pry'

class Owner
  # code goes here
  attr_reader :name, :species
  attr_accessor :cats, :dogs
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end
  
  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def buy_cat(name)
    kitty = Cat.new(name, self)
  end

  def buy_dog(name)
    puppy = Dog.new(name, self)
  end

  def walk_dogs
    @dogs.map do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    @cats.collect do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    all_pets = self.cats + self.dogs
    all_pets.each do |pet|
      sell_pet(pet)
    end
  end

  #helper method 
  def sell_pet(pet)
    if self.cats.include?(pet)
      cats.clear
    else
      dogs.clear
    end
    pet.owner = nil
    pet.mood = "nervous"
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end