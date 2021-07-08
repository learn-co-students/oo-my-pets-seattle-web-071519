require_relative '../config/environment.rb'


class Owner
  attr_reader :name, :species
  attr_accessor   :dogs, :cats
  @@all =[]

  def initialize(name)
    @name=name
    @species="human"
    @@all << self
    # @mydogs=[]
    # @mycats=[]
  end

  def say_species
    return "I am a #{species}."
  end

  def self.all
    @@all
  end
  
  def self.count
    self.all.length
  end

  def self.reset_all
    return @@all = []
  end

  def buy_cat(name)
    name= Cat.new(name, self)
  end

  def buy_dog(name)
    name = Dog.new(name, self)
    # Dog.all << name
    # @@all << name
  end


  def cats
    Cat.all.select do |cats|
      cats.owner==self
    end
  end

  def dogs
    Dog.all.select do |dogs|
      dogs.owner==self
    end
  end
  
  def sell_pets
    self.dogs.each do |dog|
      dog.mood="nervous"
      dog.owner=nil
    end
    self.cats.each do |cat|
      cat.mood="nervous"
      cat.owner=nil
    end
    # self.dogs.mood = "nervous"
    # self.dogs.owner = nil
    # self.cats.mood = "nervous"
    # self.cats.owner = nil
  end

  def walk_dogs
    self.dogs.each do |dogs|
      dogs.mood="happy"
    end
  end

  def feed_cats
    self.cats.each do |cats|
      cats.mood = "happy"
    end
  end

  def list_pets
    total_list=self.dogs + self.cats
    num_dogs= self.dogs.count
    num_cats=self.cats.count
    return "I have #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end

end