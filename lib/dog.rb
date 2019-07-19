class Dog
  attr_reader :mood, :name
  attr_accessor :owner
  @@all = []

  def initialize(name,owner)
    @name = name
    @mood = "nervous"
    @owner = Owner
    @@all << self
    owner.dogs << self
  end

  def mood=(value)
    @mood = value
  end

  def Dog.all
    @@all
  end

end