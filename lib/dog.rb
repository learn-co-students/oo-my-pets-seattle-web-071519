class Dog
  attr_reader :name
  attr_accessor :mood, :owner
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
    owner.dogs << self
  end 

  def self.all
    @@all
  end

  def Dog.find_by_name(dog_name)
    @@all.find do |dog|
      dog.name == dog_name
    end
  end


end