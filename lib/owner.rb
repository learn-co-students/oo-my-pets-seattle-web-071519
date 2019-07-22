
class Owner
 
  attr_reader :name, :species
  @@all = []

  def initialize(name)
    @name = name
    @species = 'human'
    @@all << self
  end
  
  def self.all
    @@all 
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
   "I am a #{self.species}."
  end
#initializes with a cats array
#sees if cat from Cats matches
#this owner's cat
  def cats
    Cat.all.select do |c|
      c.owner == self
    end
  end
#walks the dogs which 
#makes the dogs' moods happy
#use dogs instance method! 
#get familiar with utilizing
#other instance methods within
  def walk_dogs
    #we use .each method bc we're not 
    #modifying our collection of dogs but 
    #we are performing on each of them/making 
    #them happy
    self.dogs.each do |d|
      d.mood = "happy"
    #you don't use == bc we're not checking
    #equality, we're setting a variable; 
    #making dogs happy:)
    end
  end

  def dogs
    Dog.all.select do |d|
      d.owner == self
    end
  end
#can buy a cat that is 
#an instance of the Cat class
  def buy_cat(kitty)
    Cat.new(kitty, self)
  end

  def buy_dog(puppy)
    Dog.new(puppy, self)
  end
  #feeds cats, making cats' 
  #mood = "happy":)
  def feed_cats
    self.cats.each do |c|
      c.mood = "happy"
    end
    #use .each to iterate thru 
    #entire cats array of owner 
    #method and change each of their
    #mood to "happy"
  end
#make another instance just to set 
#new variables for #sell_pets; one that makes pets 
#all nervous and another one for 
#making them owner-less
  def sad_pet(pet)
    pet.owner = nil
    pet.mood = "nervous"
  end
#use #sad_pet for this instance method
  def sell_pets
    all_pets = self.dogs + self.cats
    all_pets.each do |p|
      sad_pet(p)
    end
  end

  def list_pets
    total_dogs = self.dogs.length
    total_cats = self.cats.length
    "I have #{total_dogs} dog(s), and #{total_cats} cat(s)."
  end

end