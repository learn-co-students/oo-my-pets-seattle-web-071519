class Owner
  attr_reader :name, :species
  attr_accessor :cats, :dogs
  @@all = []
  
  def initialize(name)
    @name = name
    @cats = []
    @dogs = []
    @species = "human"
    @@all << self
  end 

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name, self)
  end

  def walk_dogs
    @dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    @cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    @cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    @dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    @cats = []
    @dogs = []
  end

  def list_pets
    "I have #{@dogs.length} dog(s), and #{@cats.length} cat(s)."
  end

end