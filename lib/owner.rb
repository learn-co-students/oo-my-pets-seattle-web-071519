require "pry"

class Owner
attr_reader :name, :species
attr_accessor :cats, :dogs
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def Owner.all
    @@all
  end

  def Owner.count
    @@all.length 
  end

  def Owner.reset_all
    @@all = []
  end

  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end

  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    array = []
    array << self.cats
    array << self.dogs
    self.cats = []
    self.dogs = []
    array.flatten.each do |animal|
      animal.mood = "nervous"
      animal.owner = nil
    end
    # self.dogs.each do |dog|
    #   dog.mood = "nervous"
    #   dog.owner = nil
    # end
    # self.cats.each do |cat|
    #   cat.mood = "nervous"
    #   cat.owner = nil
    # end
    # self.cats = []
    # self.dogs = []
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."  
  end
end







