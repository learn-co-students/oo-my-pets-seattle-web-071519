class Owner
  attr_reader :name, :human, :species, :cats, :dogs
  @@all = []
  @cats
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end

  def reset_all
    @@all = []
  end

  def say_species
    return "I am a #{@species}."
  end

  def Owner.all
    return @@all
  end
  def Owner.count
    return @@all.count
  end
  def Owner.reset_all
  return @@all = []
  end

  def buy_cat(name)
    new_cat = Cat.new(name,self)
    return new_cat
  end

  def buy_dog(name)
    new_cat = Dog.new(name,self)
    return new_cat
  end

  def walk_dogs
    @dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    @cats.each do |dog|
      dog.mood = "happy"
    end
  end

  def sell_pets
    @cats.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    @dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    @cats = []
    @dogs = []
  end

  def list_pets
    return "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end
    
end