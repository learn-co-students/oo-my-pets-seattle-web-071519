class Dog
  
  attr_reader :name
  attr_accessor :owner
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

  def mood=(mood)
    @mood = mood
  end

  def mood
    @mood
  end


end
