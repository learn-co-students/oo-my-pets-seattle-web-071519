class Cat
  attr_reader :name
  attr_accessor :mood, :owner
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
    owner.cats << self
  end 

  def self.all
    @@all
  end

  def Cat.find_by_name(cat_name)
    @@all.find do |cat|
      cat.name == cat_name
    end
  end



end